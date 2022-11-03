def reverter(string)
  length = string.length
  arr = []
  string.split('').each.with_index do |letter, indx|
    arr[length - indx] = letter
  end
  arr.join
end


# "{\"time\":\"2022-06-17T05:52:39.787Z\"}"
# {"time": "2022-06-17T05:52:39.787Z"}
# parser(input) => "2022-06-17 07:54:13 +0200"
def parser(input)
  time = Data.parse(input['time'])

  time.strftime('YY-MM-DD:HH:mm:')
  Time.parse(time).strftime('%Y-%M-%d %H:%m:%S')
end


def fibonnaci(n)
  a, b = 0, 1
  x = 0

  return  1 if n == 1
  n.times.each do
    x += a
    b += 1
    a = b
  end
  x
end

