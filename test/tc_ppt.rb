# Fichero: tc_ppt.rb

require "ppt"
require "test/unit"

class TestPpt < Test::Unit::TestCase
  
  def setup
    @ppt = Ppt
  end
 
  def teardown
    # No hace falta hacer nada realmente
  end
  
  def test_typecheck
    assert_raise(RuntimeError) {@ppt.play('a')}
  end
  
  def valid(tirada, answer)
    return true if (answer =~ /EMPATE/) 
    return true if (answer =~ /Has perdido --> (\w+) gana a (\w+)/)
    return true if (answer =~ /Has ganado --> (\w+) gana a (\w+)/)
  end

  def test_play
    30.times do
      assert valid(@ppt.play('rock'), @ppt.answer)
    end
    30.times do
      assert valid(@ppt.play('paper'), @ppt.answer)
    end
    30.times do
      assert valid(@ppt.play('scissor'), @ppt.answer)
    end
  end
  
end