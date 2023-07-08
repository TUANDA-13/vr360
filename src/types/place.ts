export interface IPlace {
  id: string;
  category?: ICategory;
  information: IInformation[];
  created_at: string;
  updated_at: string;
  name: string;
  description?: string;
  thumbnail?: string;
  map: any;
  lat: number;
  lng: number;
  slug: string;
  x_min: number;
  x_max: number;
  y_min: number;
  y_max: number;
  map_width: number;
  map_height: number;
}

export interface ICategory {
  id: string;
  title: string;
  description?: string;
  svg?: string;
  slug?: string;
  places?: IPlace[];
}

export interface IInformation {
  id: string;
  title: string;
  description?: string;
}
