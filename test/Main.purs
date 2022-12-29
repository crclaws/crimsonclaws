module Test.Main where

import Prelude

import Effect (Effect)
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert
import Test.Unit.Main (runTest)

import Data.Int (rem)
import Data.Number (pi, sqrt)

diagonal :: Number -> Number -> Number
diagonal w h = sqrt (w * w + h * h)

circleArea :: Number -> Number
circleArea r = pi * r * r


leftoverCents :: Int -> Int
leftoverCents n = rem n 100


main :: Effect Unit
main = do
  runTest do
-- ANCHOR: diagonalTests
    suite "diagonal" do
      test "3 4 5" do
        Assert.equal 5.0 (diagonal 3.0 4.0)
      test "5 12 13" do
        Assert.equal 13.0 (diagonal 5.0 12.0)
-- ANCHOR_END: diagonalTests
    suite "circleArea" do
      test "radius 1" do
        Assert.equal 3.141592653589793 (circleArea 1.0)
      test "radius 3" do
        Assert.equal 28.274333882308138 (circleArea 3.0)