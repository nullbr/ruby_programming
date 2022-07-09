class DocumentStore
  def initialize(capacity)
    @capacity = capacity
    @documents = []
  end

  def get_capacity
    @capacity
  end

  def get_documents
    return [] if @documents.empty?

    [@documents]
  end

  def add_document(document)
    raise 'Document store is full' if @documents.length >= @capacity

    @documents.push(document)
  end

  def inspect
    "Document store: #{@documents.length}/#{@capacity}"
  end
end

document_store = DocumentStore.new(2)
document_store.add_document('Document1')
p document_store.get_documents
puts document_store.inspect
