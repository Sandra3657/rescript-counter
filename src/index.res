@val external document: {..} = "document"

let plusButton = document["getElementById"]("plus-one")
let minusButton = document["getElementById"]("minus-one")

let count = ref(0)

let renderCountTextView = n => {
  let el = document["getElementById"]("count")
  el["innerText"] = `Count is ${n->Belt.Int.toString}`
}

let updateCount = steps => {
  count := count.contents + steps
}

let renderView = steps => {
  let _ = updateCount(steps)
  let _ = renderCountTextView(count.contents)
}

let plusOne = () => renderView(1)
let minusOne = () => renderView(-1)

plusButton["addEventListener"]("click", plusOne)
minusButton["addEventListener"]("click", minusOne)
