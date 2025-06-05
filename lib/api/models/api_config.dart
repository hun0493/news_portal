export interface ApidogModel {
    news: News[];
    [property: string]: any;
}

export interface News {
    /**
     * 기사
     */
    description: string;
    /**
     * 이미지
     */
    image_url: string;
    /**
     * 기사 날짜
     */
    pub_date: string;
    /**
     * 뉴스 제목
     */
    title: string;
    [property: string]: any;
    static fnial news = (
      getTopic: '$funcUr/news/topic',
      getTopic: '$funcUr/news/issu',
    );
}