const test = require("node:test");
const assert = require("node:assert/strict");
const {awardTopRanks} = require("./leaderboard_logic");

const rewards = [5000, 4000, 3000, 2000, 1000];

test("tied users share a reward and later rank places are skipped", () => {
  const winners = awardTopRanks([
    {uid: "a", points: 100},
    {uid: "b", points: 100},
    {uid: "c", points: 90},
  ], rewards);

  assert.deepEqual(winners.map(({uid, rank, reward}) => [uid, rank, reward]), [
    ["a", 1, 5000],
    ["b", 1, 5000],
    ["c", 3, 3000],
  ]);
});

test("all users tied at fifth place receive the fifth-place award", () => {
  const players = [
    {uid: "a", points: 50},
    {uid: "b", points: 40},
    {uid: "c", points: 30},
    {uid: "d", points: 20},
    {uid: "e", points: 10},
    {uid: "f", points: 10},
    {uid: "g", points: 0},
  ];

  const winners = awardTopRanks(players, rewards);

  assert.deepEqual(winners.map(({uid, rank, reward}) => [uid, rank, reward]), [
    ["a", 1, 5000],
    ["b", 2, 4000],
    ["c", 3, 3000],
    ["d", 4, 2000],
    ["e", 5, 1000],
    ["f", 5, 1000],
  ]);
});