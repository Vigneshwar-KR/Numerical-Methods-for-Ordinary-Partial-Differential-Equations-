function h = thermometer(T)

  o = noise = -0.75 + (0.75 - (-0.75)) * rand()

  h = 2 + (1/5) .* T + o

end

