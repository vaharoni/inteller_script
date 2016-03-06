class RecordField < ActiveRecord::Base
  belongs_to :record

  self.inheritance_column = nil

  def elastic_index
    Elastic.client.index index: 'inteller', type: 'record_field', id: id, body: { content: content }
  end
end
