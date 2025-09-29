export interface IPerson {
  id: number
  name: string
  age?: number
  gender?: string
  homeworld?: string
  [key: string]: any
}
