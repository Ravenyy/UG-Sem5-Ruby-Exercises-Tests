require 'rspec/core'
require_relative '../lib/high_scores'


SCOREZ = [0, 13, 22, 100, 40, 38, 77]

RSpec.describe HighScores do
  it "Shows highest score" do
    expect(HighScores.new(SCOREZ).personal_best).to eq 100
  end
  it "Shows high scores" do
    expect(HighScores.new(SCOREZ).scores).to eq SCOREZ
  end
  it "Shows last score" do
    expect(HighScores.new(SCOREZ).latest).to eq 77
  end
  it "Shows 3 highest scores from highest to lowest" do
    expect(HighScores.new(SCOREZ).personal_top_three).to eq [100, 77, 40]
  end
  it "doesn't show last as personal best if it's not" do
    expect(HighScores.new(SCOREZ).latest_is_personal_best?).not_to eq 100
  end
  it "is false trying to show last as personal best if it's not" do
    expect(HighScores.new(SCOREZ).latest_is_personal_best?).to be false
  end
  it "but it does if it's highest" do
    expect(HighScores.new(SCOREZ).latest_is_personal_best?).to be true
  end
end