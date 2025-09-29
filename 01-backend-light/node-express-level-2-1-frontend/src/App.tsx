import { useEffect, useState } from "react"
import "./App.css"
import axios from "axios"

interface IStarship {
  id: number
  name: string
  model?: string
  manufacturer?: string
  crew?: number
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [key: string]: any
}

interface IPerson {
  id: number
  name: string
  age?: number
  gender?: string
  homeworld?: string
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [key: string]: any
}

function App() {
  const [people, setPeople] = useState<IPerson[]>([])
  const [starships, setStarships] = useState<IStarship[]>([])
  const getStarWars = axios.create({ baseURL: "http://localhost:3000" })

  useEffect(() => {
    getStarWars.get("/people").then((res) => setPeople(res.data))
    getStarWars.get("/starships").then((res) => setStarships(res.data))
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  return (
    <>
      <h2>People</h2>
      {people.map((person) => (
        <div key={person.id}>
          <p>{person.name}</p>
          <p>{person.age}</p>
          <p>{person.gender}</p>
          <p>{person.homeworld}</p>
        </div>
      ))}
      <h2>Starships</h2>
      {starships.map((starship) => (
        <div key={starship.id}>
          <p>{starship.name}</p>
          <p>{starship.model}</p>
          <p>{starship.manufacturer}</p>
          <p>{starship.crew}</p>
        </div>
      ))}
    </>
  )
}

export default App
