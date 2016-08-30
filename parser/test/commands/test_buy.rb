﻿require_relative '../../../parser/lib/aoc-mgx/body/buy'

require_relative '../test_helper'

class TestBuy < MiniTest::Test
  def setup
    @files = Dir.glob(File.join(__dir__, '..', 'fixtures/buy/*.dump'))
  end

  def test_structure
    @files.each do |dump|
      io = File.open(dump)
      struct = Buy.read(io)

      player? struct.player_id, dump
      resource? struct.resource_type, dump
      assert([1, 5].member?(struct.amount), "Amount type not in range #{dump})")
      # assert(struct.obj_id.is_a?(Numeric), "Gebäude id keine Nummer")
      assert_equal(0, struct.zero, 'Last 4 Bytes not zero' + struct.zero.to_s)
    end
  end
end