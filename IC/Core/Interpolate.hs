module IC.Core.Interpolate
( linear1

) where


linear1 :: (Ord a, Fractional a) => [a] -> [a] -> a -> a
linear1 xs ys x = let zipped   = zip xs ys
                      (l , r ) = span ((<= x) . fst) zipped
                      (x0, y0) = last l
                      (x1, y1) = head r
                  in y0 + (x - x0) * (y1 - y0) / (x1 - x0)
