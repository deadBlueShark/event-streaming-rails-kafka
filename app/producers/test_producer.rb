class TestProducer
  TOPIC_NAME = "system_events"

  def self.produce_test_event(payload)
    Karafka.producer.produce_sync(
      topic: TOPIC_NAME,
      payload: payload
    )
  end
end
