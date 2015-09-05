# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Politician.destroy_all

Politician.create :name => "Sauli Niinistö", :role => "President", :previous_works => "Niinistö was born in Salo. He ran his own law firm there before entering national politics. Niinistö served on the municipal council of Salo from 1977 to 1992 and was elected a Member of the Parliament of Finland from the district of Finland Proper in 1987. In 1994 he was chosen to lead the NCP as party chairman and subsequently became Justice Minister in Prime Minister Paavo Lipponen's first cabinet in 1995. Switching portfolios, Niinistö became Finance Minister in 1996, continuing in Lipponen's second cabinet from 1999–2003. In both administrations, Niinistö was deputy Prime Minister to social democrat Lipponen. As Finance Minister, Niinistö was known for his strict fiscal policy.[citation needed] He was the first Finn to make a purchase with euros on 1 January 2002. Niinistö was urged by his party to stand for president in the 2000 election, but refused. He announced his gradual retirement from politics in 2001, although he has not done so. He was succeeded that year by Ville Itälä as party leader. Upon the end of his term as a cabinet minister in 2003, Niinistö went became vice-chairman of the board of directors at the European Investment Bank. In March 2005, Niinistö announced his candidacy for the Finnish Presidency. He represented NCP, challenging the incumbent President Tarja Halonen. He qualified for the second round runoff (as one of the top two candidates in the first round), held on 29 January 2006, but lost to Halonen. The costs of Niinistö's campaign were circa 2,225,000 euros, including 492,864 euros and 717,191 euros contributions from NCP.[clarification needed] His financial declaration in 2006 was made more detailed in 2009 because of controversies.", :image => "https://upload.wikimedia.org/wikipedia/commons/a/a8/Sauli_Niinist%C3%B6_%28cropped%29.jpg", :location => "Mäntyniemi, Helsinki"
Politician.create :name => "Juha Sipilä", :role => "Prime Minister", :previous_works => "Sipilä's career started at Lauri Kuokkanen Ltd., first as a thesis worker and later as a product development manager. Changing jobs, he became a partner and later CEO at Solitra Oy. In 1998, Sipilä started his own business, Fortel Invest Oy. In 2002-2005 he worked as the CEO of Elektrobit Oyj, then returned to his own business. Sipilä was managing director of Solitra in 1992 and became the main owner in 1994. Sipilä sold Solitra to American ADC Telecommunications in 1996, becoming a millionaire from the proceeds. Business ADC Mersum Oy was resold to Remec in 2001. As a student, Sipilä worked for a short time in the Finnish Centre Youth, but otherwise he did not have experience in party politics before being elected to the Finnish parliament in 2011 with 5,543 personal votes.In April 2012, Sipilä announced his candidacy for the chairman's position in the party congress of the summer. On June 9, 2012, the party congress elected him chairman. He beat Tuomo Puumala in the second round by 1251 to 872 delegate votes. Sipilä led his party to victory in the 2015 election, where the Centre Party gained 14 seats compared to the previous election. With 30,758 personal votes he was the most popular candidate in the election.[8] Following the election, he was tasked with forming a government coalition; and as the leader of the Centre Party, he began formal negotiations with the Finns Party and the National Coalition Party and formed a centre-right three-party majority coalition.", :image => "https://upload.wikimedia.org/wikipedia/commons/f/f2/Juha_Sipil%C3%A4_18-4-2015.JPG", :location => "Veteli, Finland"

