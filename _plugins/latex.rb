module Jekyll
    class AbstractBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='abstract'><h5>Abstract</h5><p>#{text}</p></div>"
      end

    end

    class TheoremBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='theorem'>#{text}</div>"
      end
    end

    class DefinitionBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='definition'>#{text}</div>"
      end
    end

    class LemmaBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='lemma'>#{text}</div>"
      end
    end

    class PropositionBlock < Liquid::Block
  
      def render(context)
        text = super
        "<div class='proposition'>#{text}</div>"
      end
    end

    class CorollaryBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='corollary'>#{text}</div>"
      end
    end

    class ExampleBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='example'>#{text}</div>"
      end
    end
    
    class SloganBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='slogan'>#{text}</div>"
      end
    end
    
    class NoteBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='note'>#{text}</div>"
      end
    end
    
    class QuestionBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='question'>#{text}</div>"
      end
    end

    class ProofBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='proof'>#{text}</div>"
      end
    end

    class SolutionBlock < Liquid::Block

      def render(context)
        text = super
        "<div class='solution'>#{text}</div>"
      end
    end

  end

Liquid::Template.register_tag('abs', Jekyll::AbstractBlock)
Liquid::Template.register_tag('thm', Jekyll::TheoremBlock)
Liquid::Template.register_tag('def', Jekyll::DefinitionBlock)
Liquid::Template.register_tag('lem', Jekyll::LemmaBlock)
Liquid::Template.register_tag('cor', Jekyll::CorollaryBlock)
Liquid::Template.register_tag('ex', Jekyll::ExampleBlock)
Liquid::Template.register_tag('pf', Jekyll::ProofBlock)
Liquid::Template.register_tag('slo', Jekyll::SloganBlock)
Liquid::Template.register_tag('note', Jekyll::NoteBlock)
Liquid::Template.register_tag('qs', Jekyll::QuestionBlock)
Liquid::Template.register_tag('prop', Jekyll::PropositionBlock)
Liquid::Template.register_tag('sol', Jekyll::SolutionBlock)