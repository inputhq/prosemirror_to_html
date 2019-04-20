RSpec.describe ProsemirrorToHtml do
  it "has a version number" do
    expect(ProsemirrorToHtml::VERSION).not_to be nil
  end


  it "renders complex html correctly" do
    html = "<h1>Headline 1</h1><p> Some text. <strong>Bold Text</strong>. <em>Italic Text</em>. <strong><em>Bold and italic Text</em></strong>. Here is a <a href=\"https://input.com\">Link</a></p>"
    

    json = {
      type: 'doc',
      content: [{
        type: 'heading',
        attrs: {
          level: '1'
        },
        content: [{
          type: 'text',
          text: 'Headline 1',
        }]
      },{
        type: 'paragraph',
        content: [{
          type: 'text',
          text: ' Some text. ',
        }, {
          type: 'text',
          text: 'Bold Text',
          marks:[{
            type: 'bold',
          }]
        },{
          type: 'text',
          text: '. ',
        }, {
          type: 'text',
          text: 'Italic Text',
          marks:[{
            type: 'italic',
          }]
        },{
          type: 'text',
          text: '. ',
        }, {
          type: 'text',
          text: 'Bold and italic Text',
          marks:[{
            type: 'bold',
          }, {
            type: 'italic',
          }]
        },{
          type: 'text',
          text: '. Here is a ',
        },{
          type: 'text',
          text: 'Link',
          marks: [{
            type: 'link',
            attrs: {
              href: 'https://input.com'
            }
          }]
        }]
      }]
    }

    renderer = ProsemirrorToHtml::Renderer.new()
    expect(html).to eq renderer.render(json)
  end
end
