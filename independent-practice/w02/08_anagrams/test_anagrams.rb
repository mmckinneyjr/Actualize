require 'minitest/autorun'
require_relative 'anagrams'

class AnagramTest < Minitest::Test
  def test_no_matches
    # skip
    actual = match('diaper', ["hello", "world", "zombies", "pants"])
    expected = []
    assert_equal expected, actual
  end

  def test_detects_two_anagrams
    skip
    actual = match('master', ["stream", "pigeon", "maters"])
    expected = ["maters", "stream"]
    assert_equal expected, actual.sort
  end

  def test_does_not_detect_anagram_subsets
    skip
    actual = match('good', ["dog", "goody"])
    expected = []
    assert_equal expected, actual
  end

  def test_detects_anagram
    skip
    actual = match('listen', ["enlists", "google", "inlets", "banana"])
    expected = ["inlets"]
    assert_equal expected, actual
  end

  def test_detects_three_anagrams
    skip
    actual = match('allergy', ["gallery", "ballerina", "regally", "clergy", "largely", "leading"])
    expected = ["gallery", "largely", "regally"]
    assert_equal expected, actual.sort
  end

  def test_detects_multiple_anagrams_with_different_case
    skip
    actual = match('nose', ["Eons", "ONES"])
    expected = ["Eons", "ONES"]
    assert_equal expected, actual.sort
  end

  def test_does_not_detect_non_anagrams_with_identical_checksum
    skip
    actual = match('mass', ["last"])
    expected = []
    assert_equal expected, actual
  end

  def test_detects_anagrams_case_insensitively
    skip
    actual = match('Orchestra', ["cashregister", "Carthorse", "radishes"])
    expected = ["Carthorse"]
    assert_equal expected, actual
  end

  def test_detects_anagrams_using_case_insensitive_subject
    skip
    actual = match('Orchestra', ["cashregister", "carthorse", "radishes"])
    expected = ["carthorse"]
    assert_equal expected, actual
  end

  def test_detects_anagrams_using_case_insensitive_possible_matches
    skip
    actual = match('orchestra', ["cashregister", "Carthorse", "radishes"])
    expected = ["Carthorse"]
    assert_equal expected, actual
  end

  def test_does_not_detect_an_anagram_if_the_original_word_is_repeated
    skip
    actual = match('go', ["go Go GO"])
    expected = []
    assert_equal expected, actual
  end

  def test_anagrams_must_use_all_letters_exactly_once
    skip
    actual = match('tapper', ["patter"])
    expected = []
    assert_equal expected, actual
  end

  def test_words_are_not_anagrams_of_themselves_case_insensitive
    skip
    actual = match('BANANA', ["BANANA", "Banana", "banana"])
    expected = []
    assert_equal expected, actual
  end

  def test_words_other_than_themselves_can_be_anagrams
    skip
    actual = match('LISTEN', ["Listen", "Silent", "LISTEN"])
    expected = ["Silent"]
    assert_equal expected, actual
  end
end
