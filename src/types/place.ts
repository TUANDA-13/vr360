export interface IPlace {
  id: string;
  category?: ICategory;
  information: IInformation[];
  created_at: string;
  updated_at: string;
  name: string;
  description?: string;
  thumbnail?: string;
  lat: number;
  lng: number;
  slug: string;
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
