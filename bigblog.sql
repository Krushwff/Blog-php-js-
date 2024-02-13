-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 13 2024 г., 21:27
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bigblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(16, 19, 14, 'NEMIGA COMPLETE IEM CHENGDU TEAM LIST', '1707663972_sharing.png', '&lt;p&gt;&lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; have claimed a spot at IEM Chengdu by making a shock run through the European qualifier, besting two top 30 squads in the form of &lt;a href=&quot;https://www.hltv.org/team/12394/betboom&quot;&gt;&lt;strong&gt;BetBoom&lt;/strong&gt;&lt;/a&gt; and &lt;a href=&quot;https://www.hltv.org/team/12586/amkal&quot;&gt;&lt;strong&gt;AMKAL&lt;/strong&gt;&lt;/a&gt; along the way.&lt;br&gt;Three top 20 squads, &lt;a href=&quot;https://www.hltv.org/team/11283/falcons&quot;&gt;&lt;strong&gt;Falcons&lt;/strong&gt;&lt;/a&gt;, &lt;a href=&quot;https://www.hltv.org/team/7532/big&quot;&gt;&lt;strong&gt;BIG&lt;/strong&gt;&lt;/a&gt; and &lt;a href=&quot;https://www.hltv.org/team/11251/eternal-fire&quot;&gt;&lt;strong&gt;Eternal Fire&lt;/strong&gt;&lt;/a&gt;, pulled out of the qualifier very soon before it was set to begin, creating an easier path for an underdog team to rise to the occasion and grab the chance to appear at a significant LAN event. &lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt;, the second-lowest ranked team in attendance, took their chance.&lt;br&gt;&lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; by no means had an easy run through the qualifier, kicking their campaign off with an impressive 2-0 win over the highest-ranked team participating, &lt;a href=&quot;https://www.hltv.org/team/12394/betboom&quot;&gt;&lt;strong&gt;BetBoom&lt;/strong&gt;&lt;/a&gt;. A combination of powerful T sides and a strong effort by &lt;a href=&quot;https://www.hltv.org/player/20994/fl4mus&quot;&gt;&lt;strong&gt;Timur &quot;⁠FL4MUS⁠&quot; Marev&lt;/strong&gt;&lt;/a&gt; guided &lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; to victory.&lt;/p&gt;&lt;p&gt;Next up was an &lt;a href=&quot;https://www.hltv.org/team/12289/espionage&quot;&gt;&lt;strong&gt;Espionage&lt;/strong&gt;&lt;/a&gt; side featuring ex-Astralis AWPer &lt;a href=&quot;https://www.hltv.org/player/13843/lucky&quot;&gt;&lt;strong&gt;Philip &quot;⁠Lucky⁠&quot; Ewald&lt;/strong&gt;&lt;/a&gt;, and although the Danes took away a map, &lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; still came out on top 2-1.&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; faced &lt;a href=&quot;https://www.hltv.org/team/12586/amkal&quot;&gt;&lt;strong&gt;AMKAL&lt;/strong&gt;&lt;/a&gt;, the second-highest ranked team in the field, in the upper final. &lt;a href=&quot;https://www.hltv.org/player/21266/1eer&quot;&gt;&lt;strong&gt;Aliaksandr &quot;⁠1eeR⁠&quot; Nahorny&lt;/strong&gt;&lt;/a&gt; and &lt;a href=&quot;https://www.hltv.org/player/23317/khan&quot;&gt;&lt;strong&gt;Beksultan &quot;⁠khaN⁠&quot; Ospan&lt;/strong&gt;&lt;/a&gt; combined to ensure &lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; enjoyed a comfortable win and earned a grand final berth.&lt;/p&gt;&lt;p&gt;A rematch with &lt;a href=&quot;https://www.hltv.org/team/12289/espionage&quot;&gt;&lt;strong&gt;Espionage&lt;/strong&gt;&lt;/a&gt; took place in the grand final, and this time &lt;a href=&quot;https://www.hltv.org/player/20994/fl4mus&quot;&gt;&lt;strong&gt;FL4MUS&lt;/strong&gt;&lt;/a&gt; and &lt;a href=&quot;https://www.hltv.org/player/23317/khan&quot;&gt;&lt;strong&gt;khaN&lt;/strong&gt;&lt;/a&gt; stood tall to power their team to a 2-0 win and an IEM Chengdu spot.&lt;/p&gt;&lt;p&gt;The youthful &lt;a href=&quot;https://www.hltv.org/team/7969/nemiga&quot;&gt;&lt;strong&gt;Nemiga&lt;/strong&gt;&lt;/a&gt; squad will take their place in China as heavy underdogs, being by far the lowest-ranked and least experienced squad in attendance.&lt;/p&gt;', 0, '2024-02-11 17:47:18'),
(17, 19, 8, 'Preview: Real Madrid vs Girona – Prediction, Team News, Line-ups', '1707667086_real-madrid-cf-v-atletico-madrid-laliga-ea-sports-2048x1365.jpg', '&lt;p&gt;Real Madrid will welcome Girona at the Santiago Bernabeu on Saturday evening in a highly anticipated La Liga clash.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Los Blancos have collected 58 points from their 23 league matches this campaign but their Catalan rivals are only two points behind them in second.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Match Preview&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Real Madrid&rsquo;s six-game winning streak in the Spanish top-flight came to an end last weekend as &lt;a href=&quot;https://www.reuters.com/sports/soccer/last-gasp-llorente-goal-earns-atletico-1-1-draw-against-real-madrid-2024-02-04/&quot;&gt;they were held to a 1-1 draw by Atletico Madrid&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Carlo Ancelotti&rsquo;s men had the better chances but lack of quality in the final third meant they could take only one point from the home encounter.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Madrid found themselves ahead after Brahim Diaz slotted home in the 20th-minute of the game.&amp;nbsp;&lt;/p&gt;&lt;p&gt;But their inability to extend their advantage ultimately cost them two precious points as Marcos Llorente headed home in stoppage time to salvage a draw for Diego Simone&rsquo;s side.&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Despite the stalemate, Real still hold a two-point lead at the top of the &lt;a href=&quot;https://footballtoday.com/laliga-table/&quot;&gt;La Liga table&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Girona, on the other hand, also &lt;a href=&quot;https://www.espn.com/soccer/report/_/gameId/674234&quot;&gt;endured a frustrating draw in their previous game against Real Sociedad&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;The Catalan side thought they had taken the lead after 24 minutes but it was overruled for offside by VAR.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Sociedad also had the ball in the back of the net but it was overturned for offside as well. In the end, both sides had to settle for a single point.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Girona have picked up two wins and two draws in their previous four La Liga matches, conceding just one goal in that run.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Team News&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Real Madrid boss Carlo Ancelotti is sweating over the fitness of Vinicius Junior, who picked up a knock during their league match with Getafe earlier this month. There are also doubts over the availability of Antonio Rudiger, while David Alaba, Eder Militao and Thibaut Courtois will be absent due to injury problems.&amp;nbsp;&lt;/p&gt;&lt;p&gt;As for Girona, Juan Carlos, Joel Roca, David Lopez and Toni Villa will all be missing due to their respective injuries, but Artem Dovbyk is set to feature after regaining fitness.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Real Madrid vs Girona potential line-ups&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Real Madrid:&lt;/strong&gt; Lunin; Carvajal, Rudiger, Tchouameni, Mendy; Valverde, Kroos, Camavinga; Bellingham; Rodrygo, Diaz&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Girona:&lt;/strong&gt; Gazzaniga; Couto, E Garcia, A Martinez, Gutierrez; Torre, A Garcia, Martin; Tsyhankov, Dovbyk, Savio&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;How to Watch?&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Football fans can &lt;a href=&quot;https://footballtoday.com/laliga-live/&quot;&gt;watch all the La Liga matches on TV&lt;/a&gt;, including Real Madrid vs Girona.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Real Madrid vs Girona prediction&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Real Madrid have a big opportunity to firmly take control of the title race by beating their Catalan rivals this weekend. But Girona have also been impressive this season and boast plenty of quality in their ranks.&amp;nbsp;&lt;/p&gt;&lt;p&gt;We are expecting a close contest at the Santiago Bernabeu but Real should prevail in the end.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;i&gt;Real Madrid 2-1 Girona&amp;nbsp;&lt;/i&gt;&lt;/p&gt;', 1, '2024-02-11 17:48:35'),
(18, 19, 11, 'Shortcut Sesame Butter Noodles', '1707663034_Sesame-Butter-Noodles.jpg', '&lt;h2&gt;&lt;strong&gt;These Noodles Will Stay In My Back Pocket Forever.&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;The first time I made these, I was waiting for a sushi takeout order.&lt;/p&gt;&lt;p&gt;Bjork was working out, girls were in bed, sushi hadn&rsquo;t come yet and I was just so extremely hungry. So I raided the pantry and found a package of those Momofuku noodles &ndash; which, obviously, are delicious, but have always just been lacking a certain lusciousness to my tastebuds.&lt;/p&gt;&lt;p&gt;So I made the noodles as directed, and then added a knob of butter for creaminess, a drizzle of honey for sweetness, and a glug of sesame oil for depth. And then I literally ate *the whole* package straight, hot, slippery and delicious right out of the pan. OOF. These are good.&lt;/p&gt;&lt;p&gt;I now rely on these noodles as a back-pocket lunch, SOS dinner, or honestly &ndash; just a really great snack &ndash; and I make them several times a month.&lt;/p&gt;&lt;p&gt;When I&rsquo;m not having them as an eat-out-of-the-pan snack, I like to fill half the bowl some kind of a shreddy slaw and maybe a soft boiled egg if I&rsquo;m really feeling fancy.&lt;/p&gt;&lt;p&gt;You could absolutely add some freshly ground black pepper or a clove of freshly grated garlic to punch them up even further; that said, I really enjoy them as is. Just minimal and uncluttered tangly slips of joy.&lt;/p&gt;', 0, '2024-02-11 17:50:34'),
(19, 19, 12, 'Germany January 2024: Skoda scores first ever podium finish, Dacia #10, Opel Astra #5', '1707667106_Skoda-Octavia-Germany-January-2024.webp', '&lt;p&gt;German new car sales shoot up 19.1% year-on-year in January to&amp;nbsp;213,553 units. Volkswagen (+12.1%) trails the market slightly but scores a solid 19.5% share vs. 18.2% over the Full Year 2023. Mercedes (-0.5%) is soft year-on-year but at 10% share it is well above its December level of 8.2%. Skoda (+21.3%) lands on the German podium for the very first time at #3, after ranking &lt;a href=&quot;https://bestsellingcarsblog.com/2021/06/germany-may-2021-skoda-up-to-record-4-sales-up-37-2-on-2020-but-down-30-7-on-2019/&quot;&gt;#4 in May 2021&lt;/a&gt;&amp;nbsp;and &lt;a href=&quot;https://bestsellingcarsblog.com/2023/02/germany-january-2023-mercedes-12-share-skoda-7-7-dacia-3-2-excel-in-disappointing-market-2-6/&quot;&gt;January 2023&lt;/a&gt;. It also breaks its share record at 7.8% with a previous best of 7.7% in January 2023, and delivers its highest monthly volume since March 2021. BMW (+44.2%) is very dynamic year-on-year but drops two spots on December to #4. Audi (+4.6%) is pushed down one rank to #5. Seat (+99.9%) and Opel (+72.4%) surge ahead to #7 and #6 respectively, whereas Ford (-9.7%) and Toyota (+2.5%) underperform. Dacia (+16.9%) signs a third ever Top 10 finish at #10, a level it also reached in December 2019 and &lt;a href=&quot;https://bestsellingcarsblog.com/2023/02/germany-january-2023-mercedes-12-share-skoda-7-7-dacia-3-2-excel-in-disappointing-market-2-6/&quot;&gt;January 2023&lt;/a&gt;.&lt;/p&gt;', 1, '2024-02-11 17:51:29'),
(20, 19, 8, 'Preview: Bayer Leverkusen vs Bayern Munich – Prediction, Team News, Line-ups', '1707667122_fc-bayern-munchen-v-borussia-monchengladbach-bundesliga-2048x1365.jpg', '&lt;p&gt;In a blockbuster top-of-the-table Bundesliga clash, Bayern Munich will welcome Bayer Leverkusen at the Allianz Arena on Saturday evening.&amp;nbsp;&lt;/p&gt;&lt;p&gt;The two sides are in a fierce title race this season, with the Bavarians just two points behind their rivals in the standings.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Match Preview&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Bayern Munich will come into Saturday&rsquo;s fixture on the back of &lt;a href=&quot;https://fcbayern.com/en/news/2024/02/reaction-to-bayerns-3-1-win-at-home-to-borussia-monchengladbach&quot;&gt;a 3-1 victory over Borussia Monchengladbach&lt;/a&gt; last week.&amp;nbsp;&lt;/p&gt;&lt;p&gt;The Bavarians dominated the first half of the home encounter but Nico Alvedi scored in the 35th-minute against the run of play.&lt;/p&gt;&lt;p&gt;The hosts restored parity with Aleksandar Pavlovic scoring from a tight angle before Harry Kane netted netted his 24th league goal of the season.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Matthijs de Ligt capped off a comfortable victory by heading in Leroy Sane&rsquo;s free-kick off the underside of the bar.&lt;/p&gt;&lt;p&gt;Despite losing just two games this season, Bayern find themselves two points behind Bayer Leverkusen in the &lt;a href=&quot;https://footballtoday.com/bundesliga-table/&quot;&gt;Bundesliga table&lt;/a&gt;. &amp;nbsp;&lt;/p&gt;&lt;p&gt;The Black and Reds are the only side who are unbeaten in the German top-flight, winning 16 and drawing four of their 20 matches.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.reuters.com/sports/soccer/leverkusen-score-last-gasp-winner-beat-vfb-stuttgart-3-2-german-cup-2024-02-06/&quot;&gt;They defeated Stuttgart 3-2 in a thrilling German Cup game&lt;/a&gt; on Tuesday to reach the semi-finals of the competition.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Die Roten finished the first-half with a 1-0 lead after Waldemar Anton&rsquo;s looping header found the back of the nets.&amp;nbsp;&lt;/p&gt;&lt;p&gt;But Leverkusen bounced back after the interval with Robert Andrich firing a brilliant shot into the top corner.&amp;nbsp;&lt;/p&gt;&lt;p&gt;The midfielder then made a mistake that allowed Chris Fuehrich to restore their lead, but their advantage didn&rsquo;t last long as substitute Amine Adli equalised.&amp;nbsp;&lt;/p&gt;&lt;p&gt;With the game heading towards a draw, Jonathan Tah scored a 90th minute winner to snatch a brilliant 3-2 success for the home side.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Team News&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Manager Xabi Alonso will be missing Victor Boniface and Arthur for the upcoming fixture due to groin and thigh injuries. The availability of Palacios is also doubtful, while Odilon Kossounou is still engaged with Ivory Coast for AFCON duties.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Meanwhile, Bayern Munich face a long list of absentees including Kingley Coman, Alphonso Davies, Serge Gnabry, Tarek Buchmann, Daniel Peretz and Bouna Sarr. Konrad Laimer and Bryan Zaragoza will be assessed before the away encounter.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Bayer Leverkusen vs Bayern Munich potential line-ups&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Bayer Leverkusen:&lt;/strong&gt; Hradecky; Tapsoba, Tah, Hincapie; Frimpong, Andrich, Xhaka, Grimaldo; Hofmann, Wirtz; Iglesias&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Bayern Munich:&lt;/strong&gt; Neuer; Mazraoui, Kim, De Ligt, Guerreiro; Pavlovic, Goretzka; Sane, Muller, Musiala; Kane&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;How to Watch?&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Fans of football can enjoy the Bayer Leverkusen vs Bayern Munich match through &lt;a href=&quot;https://footballtoday.com/bundesliga-live/&quot;&gt;Bundesliga fixtures live on TV&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Bayer Leverkusen vs Bayern Munich prediction&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;This is a massive game for Leverkusen and Bayern, and both sides will likely put their best efforts to win on Saturday. Given the attacking quality of the two teams, fans can expect a very entertaining clash at the BayArena.&amp;nbsp;&lt;/p&gt;&lt;p&gt;But we are expecting the Bavarians to prevail because of top striker Harry Kane in their ranks.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;i&gt;Bayer Leverkusen 2-3 Bayern Munich&amp;nbsp;&lt;/i&gt;&lt;/p&gt;', 1, '2024-02-11 18:12:23'),
(21, 19, 8, 'INTERNAZIONALEPreview: Roma vs Inter Milan – Prediction, Team News, Line-ups', '1707667127_fc-internazionale-v-juventus-serie-a-tim-2048x1365.jpg', '&lt;p&gt;itle favourites Inter Milan will be aiming to continue their excellent winning run when they face Roma at the Stadio Olimpico on Saturday.&amp;nbsp;&lt;/p&gt;&lt;p&gt;The Nerazzurri are currently four points clear at the summit, while their capital rivals are occupying fifth spot in the &lt;a href=&quot;https://footballtoday.com/seriea-table/&quot;&gt;Serie A table&lt;/a&gt; following their recent resurgence.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Match Preview&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Inter Milan took firm control of the title race after &lt;a href=&quot;https://www.bbc.com/sport/football/68198693&quot;&gt;beating their closest rivals Juventus 1-0 last week&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Max Allegri&rsquo;s side set up to frustrate the hosts and hit them on the break in the San Siro encounter.&amp;nbsp;&lt;/p&gt;&lt;p&gt;But their tactics failed as Federico Gatti scored an own-goal in the 37th minute and Inter held out for a narrow victory.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Simone Inzaghi&rsquo;s side have had an excellent 2023-24 Serie A campaign, as they have lost only once and that came against Sassuolo back in September.&amp;nbsp;&lt;/p&gt;&lt;p&gt;In the new year, they have won all their six matches in all competitions, including their victory over Napoli in the Supercoppa Italiana.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Inter have also conceded just 10 goals, which is the fewest number of league goals by a team in the Italian top-flight this season.&amp;nbsp;&lt;/p&gt;&lt;p&gt;On the other hand, Roma have seen a resurgence in form after &lt;a href=&quot;https://www.theguardian.com/football/2024/jan/16/jose-mourinho-sacked-by-roma&quot;&gt;they sacked Jose Mourinho as manager last month&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Under new coach Daniele De Rossi, the Yellow and Reds have won each of their last three Serie A matches to move up the standings.&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Their most recent league fixture saw them thrashing Cagliari 4-0 at the Stadio Olimpico.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Paulo Dybala netted a brace while Lorenzo Pellegrini and Dean Huijsen also scored to help Roma to an emphatic home success.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Team News&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Roma boss Daniele De Rossi will not be able to avail the services of Tammy Abraham and Chris Smalling due to injury problems. Evan Ndicka will also be missing as the centre-back is away on international duty with Ivory Coast, who will face Nigeria in Sunday&rsquo;s AFCON final.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Meanwhile, Simone Inzaghi has a few injury woes and he should be able to feature his strongest team this weekend. Only fringe players Juan Cuadrado and Davide Frattesi will be absent because of fitness issues.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Roma vs Inter Milan potential line-ups&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Roma:&lt;/strong&gt; Patricio; Karsdorp, Mancini, Llorente, Angelino; Pellegrini, Paredes, Cristante; El Shaarawy, Dybala; Lukaku&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Inter Milan:&lt;/strong&gt; Sommer; Pavard, Acerbi, Bastoni; Darmian, Barella, Calhanoglu, Mkhitaryan, Dimarco; Thuram, Martinez&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;How to Watch?&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Roma vs Inter Milan, as well as all the other top-flight matches in Italy, can be watched via the &lt;a href=&quot;https://footballtoday.com/seriea-live/&quot;&gt;Serie A live streams&lt;/a&gt;.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Roma vs Inter Milan prediction&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Simone Inzaghi&rsquo;s side have been impeccable in 2024, winning all their six games in all competitions. We expect the Nerazzurri to continue their impressive run this weekend, even though Roma have been very promising under the new management.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;i&gt;Roma 0-1 Inter Milan&amp;nbsp;&lt;/i&gt;&lt;/p&gt;', 1, '2024-02-11 18:13:15');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(8, 'Sport', '<p>TESTtest1fff</p>'),
(11, 'Food', ''),
(12, 'Cars', '<p>Info cars</p>'),
(13, 'Life', '<p>Info life</p>'),
(14, 'Cyber Sport', '<p>Cyber Sport info</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(19, 1, 'Krayushkin.G', 'krayushkin.geo@gmail.com', '$2y$10$r0x62Hq6Wi/mDPMqKXVhyeR4DFyaIJaIJWSAJjYgnG4EQxz/eRc/6', '2024-02-11 14:22:43'),
(22, 0, 'egor_475', 'egorkr02@rambler.ru', '$2y$10$sdwAI.plnOgpwXqtN3IG2.NK9wzrqhuyMY2/6YmBpL1U6WhW0aPKC', '2024-02-11 17:32:32');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
