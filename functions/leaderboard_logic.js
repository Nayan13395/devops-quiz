function awardTopRanks(players, rewards) {
  const winners = [];
  let rank = 0;

  for (let index = 0; index < players.length; index++) {
    const points = players[index].points;
    const previousPoints = index === 0 ? null : players[index - 1].points;
    if (index === 0 || points !== previousPoints) rank = index + 1;

    const reward = rewards[rank - 1];
    if (reward === undefined) break;

    winners.push({...players[index], rank, reward});
  }

  return winners;
}

module.exports = {awardTopRanks};