def measure(times = 1, &prc)
  start_time = Time.now
    times.times{ prc.call }
  end_time = Time.now

  (end_time - start_time) / times
end
