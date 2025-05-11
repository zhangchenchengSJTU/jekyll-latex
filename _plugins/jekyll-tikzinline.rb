module Jekyll
  module Tags
    class Tikzinline < Liquid::Block
      def initialize(tag_name, markup, tokens)
        super
        @markup = markup  # 保存原始标记（虽然不用于哈希）
      end

      def render(context)
        # 获取实际内容并计算哈希
        content = super.to_s
        content_hash = Digest::MD5.hexdigest(content)[0..12]  # 取13位哈希
        
        # 文档头尾设置
        header = <<~'END'
        \documentclass[preview]{standalone}
        \usepackage{amsthm, amsfonts, amsmath, amssymb, mathrsfs, tikz-cd, tikz, ctex, mathtools}
        \usepackage{quiver}
        \begin{document}
        END

        footer = <<~'END'
        \end{document}
        END

        tikzinline_code = header + content + footer

        # 路径设置（包含内容哈希）
        post_slug = File.basename(context["page"]["url"], ".*")
        tmp_dir = File.join(Dir.pwd, "_tikz_tmp", post_slug)
        dest_dir = File.join(Dir.pwd, "svg", post_slug)
        FileUtils.mkdir_p(tmp_dir)
        FileUtils.mkdir_p(dest_dir)

        # 文件名仅基于内容哈希
        file_basename = "diagram_#{content_hash}"
        tex_path = File.join(tmp_dir, "#{file_basename}.tex")
        pdf_path = File.join(tmp_dir, "#{file_basename}.pdf")
        svg_path = File.join(dest_dir, "#{file_basename}.svg")

        # 编译流程
        unless File.exist?(svg_path)
          begin
            File.write(tex_path, tikzinline_code)
            
            # 1. 编译PDF
            if system("pdflatex -interaction=nonstopmode -output-directory #{tmp_dir} #{tex_path}")
              # 2. 转换SVG
              pdf2svg = context["site"]["pdf2svg"] || "pdf2svg"
              unless system("\"#{pdf2svg}\" \"#{pdf_path}\" \"#{svg_path}\"")
                Jekyll.logger.error "SVG转换失败: #{pdf_path}"
              end
            else
              Jekyll.logger.error "LaTeX编译失败: #{tex_path}"
            end
          rescue => e
            Jekyll.logger.error "TikZinline处理错误: #{e.message}"
          end
        end

        # 返回嵌入标签
        web_path = File.join("/website/svg", post_slug, "#{file_basename}.svg")
        "<span class=\"tikzinline-diagram\">
        <embed src=\"#{web_path}\" type=\"image/svg+xml\" style=\"display: inline-block; width: 10%; height: 10%; white-space: nowrap\"/>
        </span>"

      end
    end
  end
end

Liquid::Template.register_tag('tikzinline', Jekyll::Tags::Tikzinline)