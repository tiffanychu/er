def calendar(a = "", b = "", c = "", d = "", e = "", f = "", g = "", h = "", i = "", wake_up = "t7", sleep = :t1)
  @time ={}
  @time[:t16] = a
  @time[:t17] = b
  @time[:t18] = c
  @time[:t19] = d
  @time[:t20] = e
  @time[:t21] = f
  @time[:t22] = g
  @time[:t23] = h
  @time[:t24] = i
  @time[:t1] = "sleep"
  @time[:t2] = "sleep"
  @time[:t3] = "sleep"
  @time[:t4] = "sleep"
  @time[:t5] ="sleep"
  @time[:t6] = "sleep"
  @time[:t7] = "wake up"
  @time[:t8] = "school"
  @time[:t9] = "school"
  @time[:t10] = "school"
  @time[:t11] = "school"
  @time[:t12] = "school"
  @time[:t13] = "school"
  @time[:t14] = "school"
  @time[:t15] = "go home"
  if sleep != "t2" && sleep != ""
     @time[sleep.to_sym] = "sleep"
  end
  if sleep.to_s[1, sleep.length].to_i < 12
    for i in sleep.to_s[1, sleep.length].to_i .. wake_up.to_s[1, wake_up.length].to_i
      @time[('t' + i.to_s).to_sym] = "sleep"
    end
  elsif sleep.to_s[1, sleep.length].to_i >= 12 && sleep.to_s[1, sleep.length].to_i <= 24
    for i in sleep.to_s[1, sleep.length].to_i .. 24
      @time[('t' + i.to_s).to_sym] = "sleep"
    end
    for i in 1..wake_up.to_s[1, wake_up.length].to_i
      @time[('t' + i.to_s).to_sym] = "sleep"
    end
  end
  if wake_up != ""
    @time[wake_up.to_sym] = "wake up"
   end
  if wake_up.to_s[1, wake_up.length].to_i < 7
    for i in wake_up.to_s[1, wake_up.length].to_i + 1 ... 8
      @time[('t' + i.to_s).to_sym] = ""
    end
  end
  return @time
end