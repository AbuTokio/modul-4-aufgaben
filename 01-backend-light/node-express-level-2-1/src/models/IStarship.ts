export interface IStarship {
  id: number
  name: string
  model?: string
  manufacturer?: string
  crew?: number
  [key: string]: any
}
