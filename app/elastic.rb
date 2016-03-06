class Elastic
  def self.client
    @client ||= Elasticsearch::Client.new log: true
  end
end
