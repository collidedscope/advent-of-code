require_relative 'get_input'

def traverse board, right, down
  width = board[0].size
  rows = (0...board.size).step down
  cols = (0..).step right
  rows.zip(cols).count { |y, x| board[y][x % width] == ?# }
end

def solve *slopes
  trees = get_input
  slopes.map { |r, d| traverse trees, r, d }.reduce :*
end

def part1
  solve [3, 1]
end

def part2
  solve [1, 1], [3, 1], [5, 1], [7, 1], [1, 2]
end

p part1, part2

__END__
.....#....#...#.#..........#...
...#.................#.........
......#...#.#.#.....#..#.....#.
.........#.#.............##....
#..####..#..#.##.....#.........
...#........#..##...........#..
..##.#.#..#....#..#......#.#...
.......#.##....#.....###....#.#
.#..#...#......#..#....##.#....
...#...............#.#.....#...
..#............#..#.........#.#
#.#.#.............##.#......#..
#...#..............##...#.#....
...#....#................#.#..#
..#.#..#.#.#..#.....#.........#
#.............#..#..........#..
.#...#.#........###.#....#...#.
#......#....#.#..#.##..#.......
.##......###.#......#..##...#..
#..#....#........#......#.#....
.#..................#.....#.###
.#......#.#.#.....#...#.#......
....#.............#.#..........
....#..#.#........#..###.......
.....#....#...#........#.......
...........#.###....##.......#.
....#...........#.#..#...#.....
...........#.....#.#...........
.....#........#.....#.#..#....#
#.#......#.......#.......#.....
..........#.............#.#.#..
#...#..........#....#....#.....
.#.#......#..##...#.....#...##.
.#....#...#.#.......#.#........
....#....##.##...#.............
#...#....#..#.........#........
...#.....#.#...#.......#..#....
#.......#...#....##........#..#
####........#........#....#.#..
............##..........#......
.......#.....#.#.#.##..#...#...
..........#....#...##.........#
..##..####.......##......#.##..
.....#.#......##...#..#...#....
....#.#.#.........#........#...
...........###...#.........##..
.......#.#....#......#.##...##.
.................#...##.#...##.
.......#.......#..#.#..........
.#....#..#....#........#.......
...............#.##..#...##..#.
.###.#....#......#...#.#.....#.
.#.....##.......#.......#......
....#..#.....#.....#...........
.......#....#.................#
.......#.##...#...#......#.....
.#.....#...####.............#..
......#.........#..........#...
.........#....#....#........###
....#.........#......##.....#..
....#........##...##.....##...#
.#..#....#..........#...#.###.#
#..#......#...#........#.......
...#.........................#.
.............#........#........
.......#.#.#.....##.....#..#...
..##..##.........#.............
.#...#..#......#...##..##..###.
.....#....#...#...##.##........
.#.#..#...........#..#..#......
##..#...#..#...##..#....#......
...#...#...#.........#....###..
...##..#....#.#.#.......#...#..
..#.#.....#..#....#..##.......#
.....#.#.....#......#....#.#...
.......##....#.....#...#.....#.
..##..#.................#.#....
..............##....##.#..##...
.#..#.....#....#.#.#...........
......#.#.#..#..#...#.....#..##
..#.........#.#.......###...##.
#.....#...........#.....#.##.#.
#..........#....#....#..#....#.
.#.....#...#.......###......#..
....##..##......#....#....#....
.......#.#.............#....#.#
.#..#.##.##.##....#.#.....##.##
....#..##.#..#.............##..
....#...........#...#....#..#..
...........#..#....#....##.#.##
......#....#....#.....#......#.
.##.##....#.....#.#......#...#.
.....##.......#.#.#........##..
#..........##..#....#..#.#....#
...#...........................
...#..#...#..#.#.#.#.......#.#.
.....#.........#..###..........
...#.#......##....#......#..###
#..............#....#.......#..
.........##......###..###......
..#......##...........#.##.....
#.#..#......#...##.............
......#.#.............#....#..#
#.....##..#.#.................#
..##....#.....#....#.....###...
.#.#.##.....#..................
.#......#.#.#.....#..#....#....
..#.#.....##.#...#..#.#.##.....
..#.#..#......##.#.#..........#
.......##.....#..#...#....##.#.
...#.....#..........#..........
......................##......#
...###.........##.........#....
....#..................#.....#.
.##..#.............#........##.
....#....#...###..........#....
.....#.#..........###..........
..#......##......#.#.##.#..#...
##...........#.#..#.....#..#...
.........#......#..........#.#.
...#.##.#..#..###..#...........
....##.#.##...........#.....##.
....#...................###....
#.......#......#......#.....#..
#..........##..................
...#..#.#....#..#.........##.#.
......#...##.#...............#.
.........#....#.#...#..#..#....
...#......###..#......#.....#.#
#..###.#.............#.........
......#...........#............
..#..#.##.....#......#.#..#...#
.........#..............#......
........#.....#..#...#.....#..#
.....................#........#
.##.......##...#.###.........#.
.#...#.......#.#....##....#....
........#......#...........#.#.
....#......##...#.....#...#...#
..#.........#.#...............#
....#.....#......#.............
.............##.....#....#.....
........#......#.#.....#....#..
#.........#...#......#....#...#
.#........###...#.#.#...#....#.
.###...........#..#............
....##.........#..#...##.#..###
.####..#.#...............##.#..
#.....#...#....#.......##....#.
..#.....##...##.#...#..#.......
..#.###.......#.....#.......#..
...........#.......#....##....#
..#...#....##........###......#
...#..#..............#...#.....
##.#.............#....##.#..##.
##.#..#..............#.#.......
.......#....#....##............
.##..##.#..........#.#...#.#...
.........##.......##...#...#...
............#...##....#...#....
........#...#..#...#.##......#.
..#...#.#.........#.#....#.....
..#...#.#..#.......#.#.........
.......#.....#...#.#..###....#.
.#......#.#....#.#.####....#...
.......##..#......#...#......##
#####.....#........#.#.......#.
.....#...#..#...#.#.....#..#...
....#...#....##.....##....#.#..
.#..#......#.####.....#....#..#
...#.......#..#.....##........#
.#.....#.#.#.....##...#..#.....
.............#...#..#.....#....
...#.....##.......#...##..#...#
..#.............#...#..#..##...
...#........#........#...#...#.
##..........#.#.#.............#
....#....#..............#..#...
....#..####..##....#.......#.#.
.#..#.....##....#.#.....#...#..
#............##..#..#.#......#.
....#..........##..#...........
..#.##.#.......#...#.##....#...
....#.#.............#.#.##....#
...#..#.#.#......#..#....#....#
.............#...........#..#..
#.............##.......#..###..
..##....#.#.#...#...#....#...#.
##.......####........##..#.....
.###..#..#..#..#...#.#.........
............#............#.....
#...#.....#.#.##.##...#.......#
#........#....#...#.........#..
#....#.#......#.............#..
....#............#......##...#.
.......#........#..#.......#..#
#.#...#.#.#..#..#........#....#
#.#.##...........#.....#.....#.
.#...##.#..#...................
###...#.#.....................#
.#....##...##.#....#..#........
........###...#.#....##...#..##
...#..#..........###..#.......#
..#..##.............#.....#....
....##..#..............#.......
...##...##.#....#.#...#...#.#.#
..#..........#.....##........#.
.#.#.....#......#..#....#......
...##.#....#.......#......#....
...##..#........##......#..##..
#..###...#...........#.#.......
..##...#...#.#.#...#.#.....#...
..#.....##.#....#.....#..#.....
..#.#......#.......#...........
....##......##.............#..#
.......#.........##...#..#...#.
.#........#.##.#.....#.#.......
#..#...#..#.....##...........#.
..##..............#....#.......
.#..#....#.#...........#..##.#.
#....#..###..........#...#.....
.......#...##........#.#...###.
....#..#......##......#.....#..
.#..##..#..#......#......#.##..
....#.#...........#..#.#.##.#..
.....#......#.....#.....#..#...
..........#...........#...##...
#..#.#.#..#....#.....##......##
..#.....#.....#................
...#.#..##.........#..#..##....
.#.....##..#.#.#.#.....#.......
...........##...#..............
...#.#....##..#.............###
...#.#...........#.........#...
#.....#.....##..#.#.#.#....#...
##..................##.##......
......#.....#....#.....#..#...#
.............#.......#....#..##
.#..#.##..#..#.........##...#..
..#.#....#........#....#....##.
.#.#.#.#.#.......#.......#..#..
#.....#..##..#.........#.......
.............#.#..............#
.........#......#....#.#......#
.........#.#...##..#.#.........
...........#..........#........
.......#...#...#......#..#.....
#.....#...............#.....#.#
..#....#..........#.#...#..#...
#....##..#..#.....#.#..#.#.....
.#....#..###............##.....
......#.##...........#....#..#.
...#........##....#...#...#....
..#.#.#.....#..#.#..........##.
..................#...........#
##........#.#......#.#.......#.
......#..#.............##......
.#..###..#...###......#....#..#
..#...........#...#...##..#...#
..#..........#..............#..
.....#.........................
..#.#..##...........##...#.....
...........#......##.....##....
......#.......#................
.........#.......#.#...........
#......#...#........##.....##..
...#.....#....#..#.....#.......
....#.#......#...#..#.##.##...#
..#..#.#.....#...#...........#.
.#....##.####.....#..........##
...##.##.....##..###...#.......
.......#.#...#....#.......#..#.
.#..#.###.#.............#......
.###.........####..#...........
#..#.#.###.....#.......#.......
.#.....#.....#.....#.........#.
..#...#......#.......##.###....
.......##.............##.#.....
.....................#.....##.#
##.#...#........#..##........#.
...#..........#.#.#..#......###
.#....#.#.#..........##........
....#....####....#.#....#..#.#.
..#.........#....##..........##
...##.#.......##.#.......#.#...
........#..#......#...#.#.....#
.....##............#.#.......#.
.........##...##..#.....#..#...
#...#....#........#...#....##.#
..#.....#..........#...##.....#
.##..#.........#...........#...
.....##.#.#.#.#..#...#.....#.#.
.#..#..##.........#.......#...#
#....#.....#...#....#.........#
...#..#.......#.........#......
.#....##..#......##.#.#......#.
....##.##...........#...#......
..#.#....#.##...#......#.......
...#........#.............#....
...##....................#.###.
.#.......#.........#......##...
....#..#..............#....#...
....##.#............#..........
.#...#....#...##..........#....
....#............#.....#.......
.......#........#..............
....#.#....#.#..#..#...........
......................#.#......
#......##.....#..#.......##....
...#........#........#.#...##..
##.#....##....#................
#..#....#..............#.##....
......#........#...........#...
#....##.##...#...#..#...##.....
............#............#..#..
#....#...#..#..#.#...........#.
.......#..........#..........##
.....#......#....##.#..........
.#....#....#....#....#..#...#..
.....###....#...#.#.#........#.
.......#...#..........##..#...#
..##........................##.
.....#....#..............#....#
