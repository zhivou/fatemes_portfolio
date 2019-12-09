module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Dr. Fateme Esmailie'
    @seo_keywords = standard_seo_words
    @seo_description = ''
    @page_defaults = {
        home_page: {
            name: 'Fateme Esmailie',
            about: 'Omnis quasi modi corrupti qui ea quisquam quidem itaque vitae eos nam repellendus
                    exercitationem inventore ut consectetur molestias est praesentium temporibus
                    aliquid debitis laborum necessitatibus rerum eligendi atque sit eaque soluta
                    incidunt ipsum eum dolores velit quaerat tenetur corporis praesentium rerum
                    amet deserunt unde sint illum eveniet id est et quia ratione atque aperiam animi
                    sed sit voluptatem blanditiis repellat est nisi nihil et quia consequatur voluptas
                    id magni consectetur fugiat porro non at consequatur omnis recusandae sed sequi
                    at natus nisi corporis officia sit omnis accusantium qui fugit quo excepturi
                    quaerat voluptas et veniam neque occaecati reprehenderit et laudantium hic aperiam
                    a ut in fugit quis alias dicta unde quis libero blanditiis vero laborum ea nobis
                    dolor ut voluptatem quia quisquam minima necessitatibus est ad quibusdam repudiandae
                    minus voluptatem culpa rerum ut omnis omnis sint iusto eos autem perspiciatis
                    ullam error id qui pariatur ipsum iste minima voluptatem doloremque officiis
                    eum architecto quidem rerum inventore ab error eum perferendis expedita in asperiores
                    facilis fuga totam quia minus soluta quas labore illum itaque sapiente consequatur
                    omnis doloribus aut deleniti reiciendis ut aspernatur ut molestiae et ducimus
                    et ullam saepe neque consequatur asperiores iure eveniet rem rerum aut veniam
                    sed accusantium maiores magni aliquid placeat quis mollitia et quo alias similique
                    distinctio quam illo nihil sed quae sequi nihil sed molestiae quo eos qui est
                    est et sint qui tempore nihil voluptas consequatur dolores et laudantium qui
                    explicabo beatae quos quis sapiente optio voluptatem quia tempora aliquam commodi
                    veritatis rem sunt aut illo dolorum voluptatem modi non qui cum molestias sunt
                    et aut facilis impedit perferendis dolore velit est assumenda suscipit ut vitae
                    distinctio sed et dignissimos nemo et provident et non occaecati autem magnam
                    cupiditate ut nobis animi accusamus quia explicabo nostrum sit beatae voluptatibus
                    aut voluptate earum voluptas aut sit et dolor ipsam maxime laboriosam impedit
                    dolores expedita voluptates ad et vero similique libero possimus quia cupiditate
                    ut totam enim non nam provident pariatur quae eius eum delectus amet ratione
                    in aut aut odit ipsam optio aut sunt aut dolor rerum repellendus aut eaque et
                    natus tenetur voluptate non iste molestiae voluptatum laboriosam vel placeat
                    velit hic architecto dignissimos voluptatibus suscipit veritatis fuga debitis
                    velit aliquam nostrum officia repellat enim sint odio ea iure quas quia voluptatum
                    et tempora cumque voluptas adipisci dolorem nesciunt doloremque possimus dicta
                    autem sunt ea cum qui exercitationem commodi odit et voluptatem accusamus consequuntur.',
            seo_keywords: 'BIO, About Me, Welcome, Something Else',
            seo_description: 'Here is my bio page where you can know about me and what I have accomplished during my research time and beyond'
        },
        research_page: {
            title: 'My Projects',
            about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type
                    specimen book. It has survived not only five centuries, but also the leap into
                    electronic typesetting, remaining essentially unchanged. It was popularised
                    in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including
                    versions of Lorem Ipsum.",
            seo_keywords: 'Research, Projects',
            seo_description: 'My latest Research Projects and its explanation.'
        },
        contact_page: {
            title: 'Contact Me',
            about: 'Please use the form below to contact me',
            seo_keywords: 'CV, Else',
            seo_description: 'Here is my CV please review'
        },
        cv_page: {
            doc: 'https://drive.google.com/file/d/1wsm0mBcmoK-1HNQBzKeEKilOzHPk8SdU/preview',
            seo_keywords: 'CV, else',
            seo_description: 'Here is my CV please review, Add more description here'
        },
        teaching_page: {
            title: 'Teaching Portfolio',
            seo_keywords: 'Teaching, Page',
            seo_description: 'Here are my teaching experiences'
        },
        service_page: {
            title: 'Service',
            seo_keywords: 'Service',
            seo_description: 'Add description'
        },
        google_scholar: {
          link: 'https://scholar.google.com/citations?hl=en&user=0wPISvEAAAAJ'
        }
    }
  end

  def update_locales(key, value, section)
    defaults = Setting.where(current: true).first
    defaults.data[section][key] = value
    defaults.save!
  end

  private
  #
  # Add more blow:
  #
  def standard_seo_words
    "Fateme Esmailie Thermal Engineer, Bio-heat Transfer, Engineer, Thermal Management of Electromagnetic devices, FEM"
  end
end
