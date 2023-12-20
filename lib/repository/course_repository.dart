import 'package:financial_helper_app/models/course_model.dart';
import 'package:financial_helper_app/models/question_model.dart';

class CourseRepository {
  final List<CourseModel> _list = [
    CourseModel(
      name: "Financial indicators and strategies in investment management",
      text:
          "Financial indicators and investment management strategies are crucial for ensuring the success of any investment portfolio. By carefully analyzing key financial metrics such as return on investment, cash flow, and profitability ratios, investors can make informed decisions about where to allocate their funds. Additionally, having a solid investment management strategy in place is essential for maximizing returns and minimizing risk. This may involve diversifying the portfolio, regularly rebalancing assets, and staying informed about market trends and economic conditions. One common investment management strategy is to follow a long-term buy-and-hold approach, which involves investing in quality assets and holding onto them for an extended period of time. This strategy aims to capitalize on the power of compounding returns and minimize the impact of short-term market fluctuations. Another popular strategy is value investing, which involves identifying undervalued assets and purchasing them with the expectation that their value will increase over time. In conclusion, understanding financial indicators and implementing effective investment management strategies are essential for achieving long-term investment success. By carefully monitoring key metrics and following proven investment strategies, investors can build a strong and resilient portfolio that can weather market volatility and deliver attractive returns over time.",
      image: "assets/images/courses/course-1.png",
      result: 0,
      questionCount: 20,
      test: [
        QuestionModel(
            question: "What is the main goal of financial management?",
            answers: {
              "Maximizing profits": false,
              "Minimizing costs": false,
              "Maximizing shareholder wealth": true,
              "Maximizing sales revenue": false,
            }),
        QuestionModel(
            question:
                "What are some key financial indicators for investment management?",
            answers: {
              "Return on investment": false,
              "Customer satisfaction": false,
              "Cash flow": true,
              "Employee turnover rate": false,
            }),
        QuestionModel(
            question:
                "What is a common investment management strategy that involves holding onto assets for an extended period of time?",
            answers: {
              "Day trading": false,
              "Long-term buy-and-hold approach": true,
              "Market timing": false,
              "Speculating": false,
            }),
        QuestionModel(question: "What is value investing?", answers: {
          "Selling assets at a loss": false,
          "Investing in high-risk assets": false,
          "Identifying undervalued assets and expecting their value to increase over time":
              true,
          "Investing based on market trends and speculation": false,
        }),
        QuestionModel(
            question:
                "What is the primary role of a financial manager in a company?",
            answers: {
              "Managing employee performance": false,
              "Developing marketing strategies": false,
              "Overseeing financial planning and budgeting": true,
              "Handling customer service operations": false,
            }),
        QuestionModel(
            question: "What is the purpose of financial analysis?",
            answers: {
              "Assessing employee satisfaction": false,
              "Evaluating the company's competitive position in the market":
                  true,
              "Managing inventory levels": false,
              "Creating advertising campaigns": false,
            }),
        QuestionModel(
            question:
                "What is the concept of diversification in investment management?",
            answers: {
              "Putting all investment funds into a single asset": false,
              "Spreading investment funds across different assets to reduce risk":
                  true,
              "Investing only in high-risk assets for potential high returns":
                  false,
              "Investing in assets based on market trends and speculation":
                  false,
            }),
        QuestionModel(
            question:
                "What is the role of risk management in financial decision-making?",
            answers: {
              "Ignoring potential risks to maximize returns": false,
              "Identifying and assessing potential risks to make informed decisions":
                  true,
              "Avoiding all investment opportunities to eliminate risk": false,
              "Relying solely on luck to mitigate risks": false,
            }),
        QuestionModel(
            question:
                "What is the purpose of financial forecasting in a business?",
            answers: {
              "Predicting future weather patterns for outdoor events": false,
              "Estimating future financial performance and outcomes": true,
              "Planning employee training programs": false,
              "Organizing company social events": false,
            }),
        QuestionModel(
            question:
                "What is the significance of cash flow management in a company?",
            answers: {
              "Monitoring employee attendance and punctuality": false,
              "Managing the movement of cash in and out of the business to ensure financial stability":
                  true,
              "Designing office layout and decor": false,
              "Creating product packaging and branding": false,
            }),
        QuestionModel(
            question: "What is the role of financial reporting in a business?",
            answers: {
              "Creating company newsletters and internal communications": false,
              "Communicating the company's financial performance and position to stakeholders":
                  true,
              "Organizing team-building activities": false,
              "Developing new product prototypes": false,
            }),
        QuestionModel(
            question:
                "What is the concept of capital budgeting in financial management?",
            answers: {
              "Allocating funds for employee bonuses and incentives": false,
              "Evaluating and selecting long-term investment projects to achieve company goals":
                  true,
              "Managing office supplies and inventory levels": false,
              "Implementing customer loyalty programs": false,
            }),
        QuestionModel(
            question:
                "What is the purpose of financial forecasting in a business?",
            answers: {
              "Predicting future weather patterns for outdoor events": false,
              "Estimating future financial performance and outcomes": true,
              "Planning employee training programs": false,
              "Organizing company social events": false,
            }),
        QuestionModel(
            question:
                "What is the significance of cash flow management in a company?",
            answers: {
              "Monitoring employee attendance and punctuality": false,
              "Managing the movement of cash in and out of the business to ensure financial stability":
                  true,
              "Designing office layout and decor": false,
              "Creating product packaging and branding": false,
            }),
        QuestionModel(
            question: "What is the role of financial reporting in a business?",
            answers: {
              "Creating company newsletters and internal communications": false,
              "Communicating the company's financial performance and position to stakeholders":
                  true,
              "Organizing team-building activities": false,
              "Developing new product prototypes": false,
            }),
        QuestionModel(
            question:
                "What is the concept of capital budgeting in financial management?",
            answers: {
              "Allocating funds for employee bonuses and incentives": false,
              "Evaluating and selecting long-term investment projects to achieve company goals":
                  true,
              "Managing office supplies and inventory levels": false,
              "Implementing customer loyalty programs": false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating the compound interest?",
            answers: {
              "P(1 + r)^n": true,
              "P(1 - r)^n": false,
              "P(1 + r/n)^nt": false,
              "P(1 - r/n)^nt": false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating the price-earnings ratio (P/E ratio)?",
            answers: {
              "Market Price / Earnings per Share": true,
              "Earnings per Share / Market Price": false,
              "Market Price x Earnings per Share": false,
              "Earnings per Share - Market Price": false,
            }),
        QuestionModel(
            question:
                "What is the role of the Federal Reserve in the United States?",
            answers: {
              "Regulate the stock market": false,
              "Regulate the banking industry": true,
              "Regulate the insurance industry": false,
              "Regulate the real estate industry": false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating the net present value (NPV)?",
            answers: {
              "Present Value - Initial Investment": true,
              "Initial Investment - Present Value": false,
              "Present Value x Initial Investment": false,
              "Initial Investment x Present Value": false,
            }),
      ],
    ),
    CourseModel(
      name: "Financial Literacy and Investment",
      text:
          "Financial literacy and investment knowledge assessment are crucial for individuals to make informed financial decisions. Without a solid understanding of financial concepts such as budgeting, saving, investing, and managing debt, individuals may struggle to achieve their financial goals. Assessing one's financial literacy and investment knowledge can help identify areas for improvement and provide the necessary tools and resources to enhance financial decision-making skills. An assessment of financial literacy can help individuals understand their current level of knowledge and identify any gaps that need to be addressed. This can involve taking a quiz or test to gauge one's understanding of key financial concepts, such as compound interest, risk management, and diversification. By identifying areas of weakness, individuals can focus on improving their knowledge in those specific areas, ultimately leading to better financial decision-making. Moreover, investment knowledge assessment is essential for individuals who want to grow their wealth through investing. Understanding different investment vehicles, such as stocks, bonds, mutual funds, and real estate, is crucial for making informed investment decisions. An assessment of investment knowledge can help individuals understand their risk tolerance, investment goals, and time horizon, which are all important factors in creating a well-rounded investment strategy.",
      image: "assets/images/courses/course-2.png",
      result: 0,
      questionCount: 20,
      test: [
        QuestionModel(
            question: "What is the main function of a financial market?",
            answers: {
              "Providing a platform for buying and selling goods": false,
              "Facilitating the exchange of currencies": false,
              "Mobilizing savings for investment": true,
              "Regulating government spending": false,
            }),
        QuestionModel(
            question: "What does the term 'liquidity' refer to in finance?",
            answers: {
              "The ability to convert assets into cash quickly without loss":
                  true,
              "The amount of debt a company holds": false,
              "The total value of a company's assets": false,
              "The profitability of a company": false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating Return on Investment (ROI)?",
            answers: {
              "Net Income / Total Assets": false,
              "Net Profit / Sales Revenue": false,
              "Net Income / Shareholder Equity": false,
              "Net Profit / Cost of Investment": true,
            }),
        QuestionModel(
            question: "What is the purpose of a balance sheet?",
            answers: {
              "To show the revenue and expenses over a period of time": false,
              "To provide an overview of a company's financial position at a specific point in time":
                  true,
              "To forecast future sales and profits": false,
              "To track the cash flow of a company": false,
            }),
        QuestionModel(
            question:
                "What is the role of the Securities and Exchange Commission (SEC) in the United States?",
            answers: {
              "Regulating interest rates set by banks": false,
              "Enforcing environmental protection laws for businesses": false,
              "Regulating the issuance and trading of securities to protect investors":
                  true,
              "Setting international trade policies": false,
            }),
        QuestionModel(
            question:
                "What does the term 'diversification' mean in investment?",
            answers: {
              "Investing in a single asset class to maximize returns": false,
              "Spreading investments across different assets to reduce risk":
                  true,
              "Investing only in foreign markets to hedge against domestic risks":
                  false,
              "Investing in high-risk, high-return assets for short-term gains":
                  false,
            }),
        QuestionModel(
            question: "What is the purpose of financial leverage?",
            answers: {
              "To minimize the impact of interest rates on borrowing costs":
                  false,
              "To increase the potential return on an investment through borrowed funds":
                  true,
              "To reduce the risk associated with investment activities": false,
              "To maintain a stable capital structure for a company": false,
            }),
        QuestionModel(
            question: "What is the role of a credit rating agency?",
            answers: {
              "Assessing the ethical practices of companies": false,
              "Evaluating the environmental impact of business operations":
                  false,
              "Assessing the creditworthiness of borrowers and issuing credit ratings":
                  true,
              "Regulating the stock market to prevent insider trading": false,
            }),
        QuestionModel(
            question: "What is the primary objective of monetary policy?",
            answers: {
              "Stabilizing employment levels in the economy": false,
              "Controlling inflation and deflation in the economy": true,
              "Encouraging international trade and commerce": false,
              "Regulating corporate tax rates": false,
            }),
        QuestionModel(
            question:
                "What does the term 'opportunity cost' mean in economics?",
            answers: {
              "The cost of producing one additional unit of a good or service":
                  false,
              "The cost of purchasing goods and services in foreign markets":
                  false,
              "The value of the next best alternative that is given up when a decision is made":
                  true,
              "The cost associated with borrowing funds for investment purposes":
                  false,
            }),
        QuestionModel(
            question:
                "What does the term 'diversification' refer to in investment?",
            answers: {
              "Putting all money into a single investment to maximize returns":
                  false,
              "Spreading investments across different assets to reduce risk":
                  true,
              "Investing in multiple companies within the same industry": false,
              "Avoiding investing in the stock market": false,
            }),
        QuestionModel(
            question:
                "What is the significance of the Federal Reserve in the U.S. economy?",
            answers: {
              "Regulating international trade agreements": false,
              "Setting fiscal policy and regulating government spending": false,
              "Controlling the money supply and interest rates to maintain economic stability":
                  true,
              "Overseeing corporate mergers and acquisitions": false,
            }),
        QuestionModel(
            question: "What is the purpose of a credit score?",
            answers: {
              "To track personal expenses": false,
              "To evaluate an individual's financial responsibility and creditworthiness":
                  true,
              "To determine eligibility for government benefits": false,
              "To assess knowledge of financial management": false,
            }),
        QuestionModel(
            question: "What is the role of an investment banker?",
            answers: {
              "Managing day-to-day banking operations": false,
              "Advising individuals on personal financial decisions": false,
              "Facilitating the issuance of new securities and providing corporate finance services":
                  true,
              "Administering government grants and loans": false,
            }),
        QuestionModel(
            question: "What is the concept of 'leverage' in finance?",
            answers: {
              "The use of debt to finance an investment": true,
              "The process of increasing profit margins": false,
              "The practice of diversifying investments": false,
              "The ability to quickly convert assets into cash": false,
            }),
      ],
    ),
    CourseModel(
      name: "Ethical Aspects in the Financial Industry",
      text:
          "The financial industry plays a crucial role in the global economy, shaping the allocation of resources, facilitating investment, and providing essential services to individuals and businesses. However, alongside its economic significance, the industry also grapples with ethical considerations that have far-reaching implications for society. Ethical conduct and decision-making within the financial sector are essential for maintaining trust, integrity, and stability. This essay explores the ethical aspects in the financial industry, examining the challenges, consequences, and potential solutions associated with ethical dilemmas in finance. One of the primary ethical concerns within the financial industry revolves around transparency and accountability. Financial institutions and professionals are entrusted with managing other people's money and making decisions that can have profound impacts on individuals, businesses, and even entire economies. As such, there is a moral imperative to ensure that financial practices are conducted with honesty, fairness, and adherence to regulations and standards. Failure to uphold these ethical principles can lead to financial misconduct, fraud, and exploitation of vulnerable stakeholders. Another critical ethical issue in finance is the concept of responsible investing and corporate social responsibility. Investors and asset managers are increasingly recognizing the importance of considering environmental, social, and governance (ESG) factors when making investment decisions. Ethical investing involves evaluating companies based on their ethical practices, sustainability initiatives, and social impact, rather than solely focusing on financial returns. This shift towards ethical investing reflects a growing awareness of the interconnectedness between financial success and societal well-being.",
      image: "assets/images/courses/course-3.png",
      result: 0,
      questionCount: 15,
      test: [
        QuestionModel(
            question: "What is the purpose of a cash flow statement?",
            answers: {
              "To track changes in the market value of securities": false,
              "To provide a snapshot of a company's financial position at a specific point in time":
                  false,
              "To report the company's cash inflows and outflows from operating, investing, and financing activities":
                  true,
              "To calculate the company's expected future cash flows": false,
            }),
        QuestionModel(
            question: "What is the concept of 'present value' in finance?",
            answers: {
              "The value of an investment at a specific point in the future":
                  false,
              "The value of an investment at the current time": true,
              "The value of an investment at the time of purchase": false,
              "The value of an investment at maturity": false,
            }),
        QuestionModel(
            question: "What is the purpose of financial forecasting?",
            answers: {
              "To analyze historical financial data": false,
              "To predict future financial performance based on current and past data":
                  true,
              "To calculate the company's tax liabilities": false,
              "To prepare financial statements for regulatory reporting": false,
            }),
        QuestionModel(
            question: "What is the role of a credit analyst?",
            answers: {
              "Facilitating stock trades on the exchange": false,
              "Assessing the creditworthiness of individuals and businesses applying for loans":
                  true,
              "Managing the company's payroll and employee benefits": false,
              "Providing investment advice to clients": false,
            }),
        QuestionModel(
            question:
                "What is the function of the Securities Investor Protection Corporation (SIPC)?",
            answers: {
              "Regulating the issuance of new securities": false,
              "Protecting investors from losses in the case of brokerage firm insolvency":
                  true,
              "Setting interest rates for mortgages": false,
              "Overseeing international trade agreements": false,
            }),
        QuestionModel(
            question: "What is the purpose of a hedge fund?",
            answers: {
              "To provide loans to individuals and businesses": false,
              "To manage the investments of a company's employees": false,
              "To pool funds from high-net-worth individuals and institutions to invest in a diverse range of assets":
                  true,
              "To facilitate the buying and selling of stocks and other securities":
                  false,
            }),
        QuestionModel(
            question:
                "What is the significance of the Efficient Market Hypothesis in investment theory?",
            answers: {
              "The belief that market prices already reflect all available information":
                  true,
              "The idea that market prices are unpredictable and random": false,
              "The principle that markets are inefficient and can be exploited for profit":
                  false,
              "The theory that market prices move in predictable cycles": false,
            }),
        QuestionModel(
            question:
                "What is the role of a chief financial officer (CFO) in a company?",
            answers: {
              "Managing the company's day-to-day operations": false,
              "Overseeing the company's human resources department": false,
              "Making strategic financial decisions and managing the company's finances":
                  true,
              "Developing marketing campaigns for the company's products":
                  false,
            }),
        QuestionModel(
            question: "What is the main goal of financial management?",
            answers: {
              "Maximizing profits": false,
              "Minimizing costs": false,
              "Maximizing shareholder wealth": true,
              "Maximizing sales revenue": false,
            }),
        QuestionModel(question: "What does ROI stand for?", answers: {
          "Return on Investment": true,
          "Rate of Inflation": false,
          "Revenue of Income": false,
          "Risk of Investment": false,
        }),
        QuestionModel(
            question:
                "What is the formula for calculating EBIT (Earnings Before Interest and Taxes)?",
            answers: {
              "Net Income / Total Assets": false,
              "Gross Profit - Operating Expenses": false,
              "Revenue - Cost of Goods Sold": false,
              "Net Income + Interest + Taxes": true,
            }),
        QuestionModel(
            question: "What is the primary function of a balance sheet?",
            answers: {
              "To show the company's revenues and expenses": false,
              "To show the company's cash flows": false,
              "To show the company's assets, liabilities, and equity": true,
              "To show the company's income statement": false,
            }),
        QuestionModel(
            question: "What does the term 'liquidity' refer to in finance?",
            answers: {
              "The ability to buy and sell assets quickly without causing a significant price change":
                  true,
              "The amount of debt a company has compared to its equity": false,
              "The process of converting assets into cash": false,
              "The rate of return on an investment": false,
            }),
        QuestionModel(
            question:
                "What is the purpose of a SWOT analysis in financial management?",
            answers: {
              "To forecast future cash flows": false,
              "To evaluate a company's strengths, weaknesses, opportunities, and threats":
                  true,
              "To calculate the company's return on investment": false,
              "To determine the company's cost of capital": false,
            }),
        QuestionModel(
            question:
                "What is the role of the Federal Reserve in the United States?",
            answers: {
              "To set fiscal policy and regulate the stock market": false,
              "To control inflation and unemployment through monetary policy":
                  true,
              "To oversee corporate financial reporting and auditing": false,
              "To provide loans to small businesses and startups": false,
            }),
      ],
    ),
    CourseModel(
      name: "The Role of Finance in Supporting SMEs",
      text:
          "Small and Medium-Sized Enterprises (SMEs) are vital contributors to economic growth, job creation, and innovation. However, these businesses often face challenges in accessing the financial resources necessary for sustainable growth and development. The role of finance in supporting SMEs is essential for fostering entrepreneurship, driving economic prosperity, and ensuring a diverse and resilient business landscape. This essay explores the significance of finance in supporting SMEs, examining the challenges, opportunities, and best practices in providing financial assistance to small and medium-sized businesses. One of the primary challenges faced by SMEs is access to affordable and appropriate financing. Traditional lending institutions may perceive SMEs as higher-risk borrowers, making it difficult for these businesses to secure loans or credit lines. As a result, SMEs often struggle to fund their operations, invest in expansion, or weather economic downturns. To address this challenge, innovative financial products and services tailored to the needs of SMEs have emerged, including microloans, invoice financing, peer-to-peer lending, and venture capital funding. These alternative financing options provide SMEs with greater flexibility and accessibility to capital, enabling them to pursue growth opportunities and navigate financial constraints. Moreover, the role of finance in supporting SMEs extends beyond providing capital. Financial institutions and policymakers can play a crucial role in offering advisory services, mentorship programs, and capacity-building initiatives to help SMEs improve their financial literacy, management practices, and strategic planning. By equipping SMEs with the necessary skills and knowledge, finance can empower these businesses to make informed decisions, manage risks effectively, and capitalize on market opportunities.",
      image: "assets/images/courses/course-4.png",
      result: 0,
      questionCount: 20,
      test: [
        QuestionModel(
            question:
                "Which type of market efficiency states that all publicly available information is reflected in a stock's price?",
            answers: {
              "Weak form efficiency": false,
              "Semi-strong form efficiency": true,
              "Strong form efficiency": false,
              "Random walk hypothesis": false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating the present value of a future cash flow?",
            answers: {
              "Future value / (1 + r)^t": false,
              "Future value * (1 - r)^t": false,
              "Future value / (1 - r)^t": false,
              "Future value / (1 + r)^t": true,
            }),
        QuestionModel(
            question: "What is the purpose of a budget in financial planning?",
            answers: {
              "To track actual performance against forecasted performance":
                  true,
              "To calculate the company's return on equity": false,
              "To determine the company's optimal capital structure": false,
              "To assess the company's market risk": false,
            }),
        QuestionModel(
            question:
                "What does the term 'diversification' refer to in investment?",
            answers: {
              "Investing in a wide range of industries to minimize risk": true,
              "Investing in foreign currencies to hedge against exchange rate fluctuations":
                  false,
              "Investing in high-risk assets to maximize potential returns":
                  false,
              "Investing in a single stock to concentrate risk for higher gains":
                  false,
            }),
        QuestionModel(
            question:
                "What is the key difference between a traditional IRA and a Roth IRA?",
            answers: {
              "Contributions to a traditional IRA are tax-deductible, while Roth IRA contributions are not":
                  true,
              "Roth IRA offers higher annual contribution limits compared to a traditional IRA":
                  false,
              "Earnings on investments in a Roth IRA are taxable, while earnings in a traditional IRA are not":
                  false,
              "Traditional IRA withdrawals are tax-free, while Roth IRA withdrawals are taxed as income":
                  false,
            }),
        QuestionModel(
            question:
                "What is the main purpose of financial ratios in analysis?",
            answers: {
              "To measure a company's liquidity and solvency": false,
              "To calculate the company's weighted average cost of capital":
                  false,
              "To identify potential fraud and mismanagement": false,
              "To evaluate a company's financial performance and compare it to industry benchmarks":
                  true,
            }),
        QuestionModel(
            question:
                "What is the role of a credit rating agency in the financial markets?",
            answers: {
              "To regulate interest rates and lending practices": false,
              "To provide investment advice and portfolio management services":
                  false,
              "To assess companies' creditworthiness and assign credit ratings":
                  true,
              "To facilitate currency exchange and international trade transactions":
                  false,
            }),
        QuestionModel(
            question:
                "What does the term 'capital budgeting' refer to in finance?",
            answers: {
              "The process of raising capital through debt and equity financing":
                  false,
              "The allocation of resources to long-term investment projects":
                  true,
              "The calculation of a company's cost of capital": false,
              "The management of a company's working capital and cash flow":
                  false,
            }),
        QuestionModel(
            question:
                "What is the main objective of risk management in financial decision-making?",
            answers: {
              "To eliminate all risks associated with investments and operations":
                  false,
              "To maximize potential returns while minimizing risks": false,
              "To identify, assess, and mitigate potential risks to achieve company objectives":
                  true,
              "To speculate on market trends and fluctuations for short-term gains":
                  false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating the price-earnings ratio (P/E ratio)?",
            answers: {
              "Share price / Earnings per share": true,
              "Earnings per share / Share price": false,
              "Dividends per share / Share price": false,
              "Book value per share / Share price": false,
            }),
        QuestionModel(
            question: "What is the main purpose of a balance sheet?",
            answers: {
              "To show the revenue and expenses of a company": false,
              "To measure the profitability of a company": false,
              "To show the financial position of a company at a specific point in time":
                  true,
              "To measure the cash flow of a company": false,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating return on investment (ROI)?",
            answers: {
              "Net Income / Total Assets": false,
              "Net Income / Average Shareholder's Equity": false,
              "Net Income / Total Liabilities": false,
              "Net Income / Total Investment * 100": true,
            }),
        QuestionModel(
            question: "What is the purpose of a cash flow statement?",
            answers: {
              "To show the expenses of a company": false,
              "To show the revenues of a company": false,
              "To show the inflow and outflow of cash in a company": true,
              "To show the long-term investments of a company": false,
            }),
        QuestionModel(
            question: "What is the role of a financial analyst?",
            answers: {
              "To manage the day-to-day financial transactions of a company":
                  false,
              "To assess the financial performance of companies and industries":
                  true,
              "To manage the marketing activities of a company": false,
              "To manage the human resources of a company": false,
            }),
        QuestionModel(
            question: "What is the main purpose of financial leverage?",
            answers: {
              "To increase the risk of a company": false,
              "To increase the liquidity of a company": false,
              "To increase the profitability of a company": false,
              "To increase the return on investment for shareholders": true,
            }),
        QuestionModel(
            question:
                "What is the formula for calculating Net Present Value (NPV)?",
            answers: {
              "Cash flows / Rate of return": false,
              "Cash flows - Initial investment": false,
              "Initial investment / Cash flows": false,
              "Sum of (Cash flows / (1 + Rate of return)^t)": true,
            }),
        QuestionModel(
            question:
                "What is the purpose of a budget in financial management?",
            answers: {
              "To control inflation in the economy": false,
              "To control the price of goods and services": false,
              "To control the spending and revenue of a company": true,
              "To control the interest rates in the market": false,
            }),
        QuestionModel(
            question: "What is the main function of a financial market?",
            answers: {
              "To sell goods and services": false,
              "To buy and sell financial assets": true,
              "To produce goods and services": false,
              "To set the prices of goods and services": false,
            }),
        QuestionModel(
            question: "What is the purpose of diversification in investment?",
            answers: {
              "To concentrate investment in one asset": false,
              "To reduce risk by spreading investment across different assets":
                  true,
              "To increase risk by spreading investment across different assets":
                  false,
              "To increase reward by concentrating investment in one asset":
                  false,
            }),
        QuestionModel(
            question:
                "What is the role of the Securities and Exchange Commission (SEC)?",
            answers: {
              "To set monetary policy in the economy": false,
              "To regulate the stock market and protect investors": true,
              "To regulate the banking industry": false,
              "To manage the national debt": false,
            }),
      ],
    ),
    CourseModel(
      name: "The Impact of Digitalization on Financial Services",
      text: "The digital revolution has transformed the landscape of financial services, reshaping the way individuals and businesses access, manage, and utilize financial products. The impact of digitalization on financial services is profound, revolutionizing traditional banking, investment, and payment systems, and creating new opportunities for financial inclusion, innovation, and efficiency. This essay explores the influence of digitalization on financial services, examining the benefits, challenges, and implications of the digital transformation in the financial industry. One of the most significant impacts of digitalization on financial services is the democratization of access to financial products and services. Digital banking platforms, mobile payment solutions, and online investment platforms have expanded access to financial services, reaching underserved populations, remote communities, and individuals with limited access to traditional banking infrastructure. As a result, digitalization has the potential to enhance financial inclusion, empowering individuals to participate in the formal economy, build savings, and access credit and insurance products. Furthermore, digitalization has revolutionized the customer experience in financial services. Fintech innovations such as robo-advisors, AI-powered chatbots, and personalized financial management apps have redefined how individuals interact with financial institutions, enabling seamless, personalized, and convenient access to financial advice, transactions, and account management. The integration of digital technologies has enhanced customer engagement, improved transparency, and streamlined processes, driving greater efficiency and satisfaction in financial service delivery.",
      image: "assets/images/courses/course-5.png",
      result: 0,
      questionCount: 15,
      test: [
        QuestionModel(
            question: "Which financial institution acts as an intermediary between investors and companies by issuing and underwriting securities?",
            answers: {
              "Commercial bank": false,
              "Investment bank": true,
              "Credit union": false,
              "Asset management firm": false,
            }),
        QuestionModel(
            question: "What is the main function of a central bank?",
            answers: {
              "To regulate the stock market": false,
              "To control inflation and interest rates": true,
              "To set fiscal policy for the government": false,
              "To regulate the insurance industry": false,
            }),

        QuestionModel(
            question: "What is the purpose of a credit rating agency?",
            answers: {
              "To provide loans to individuals and companies": false,
              "To analyze and rate the creditworthiness of companies and government entities": true,
              "To regulate the credit card industry": false,
              "To manage the national debt": false,
            }),

        QuestionModel(
            question: "What is the main purpose of insurance in personal finance?",
            answers: {
              "To provide a source of investment income": false,
              "To protect against financial loss due to unforeseen events": true,
              "To provide a source of retirement income": false,
              "To provide a source of tax-free income": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating compound interest?",
            answers: {
              "Principal * Interest rate * Time": false,
              "Principal * (1 + Interest rate)^Time": true,
              "Principal * Time / Interest rate": false,
              "Principal * Interest rate / Time": false,
            }),

        QuestionModel(
            question: "What is the purpose of a stock exchange?",
            answers: {
              "To buy and sell real estate properties": false,
              "To buy and sell shares of publicly traded companies": true,
              "To buy and sell commodities and raw materials": false,
              "To buy and sell foreign currencies": false,
            }),

        QuestionModel(
            question: "What is the role of a financial planner?",
            answers: {
              "To manage the day-to-day financial transactions of a company": false,
              "To create financial plans for individuals and companies": true,
              "To oversee the production of goods and services": false,
              "To manage the marketing activities of a company": false,
            }),

        QuestionModel(
            question: "What is the purpose of a mutual fund?",
            answers: {
              "To provide insurance coverage for individuals and companies": false,
              "To pool money from multiple investors and invest in a diversified portfolio of securities": true,
              "To provide investment advice to individuals and companies": false,
              "To provide pension and retirement benefits": false,
            }),

        QuestionModel(
            question: "What is the main function of the Federal Reserve System?",
            answers: {
              "To regulate the stock market": false,
              "To control inflation and interest rates": true,
              "To set fiscal policy for the government": false,
              "To regulate the insurance industry": false,
            }),

        QuestionModel(
            question: "What is the purpose of financial regulation?",
            answers: {
              "To limit competition in the financial industry": false,
              "To protect investors and maintain stability in the financial system": true,
              "To increase the risk of financial transactions": false,
              "To maximize profits for financial institutions": false,
            }),
        QuestionModel(
            question: "What do the 'bull' and 'bear' refer to in financial markets?",
            answers: {
              "Bullish market for commodities": true,
              "Bearish market for stocks": true,
              "Bullish market for stocks": true,
              "Bearish market for commodities": true,
            }),

        QuestionModel(
            question: "What is the role of an auditor in financial management?",
            answers: {
              "Preparing financial statements": false,
              "Providing financial advice to clients": false,
              "Reviewing and evaluating a company's financial records": true,
              "Handling daily financial transactions": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating the price-earnings (P/E) ratio of a company?",
            answers: {
              "Market price per share / Earnings per share": true,
              "Earnings per share / Market price per share": false,
              "Total earnings / Total number of shareholders": false,
              "Total market capitalization / Total sales revenue": false,
            }),

        QuestionModel(
            question: "What does the term 'asset allocation' refer to in investment portfolio management?",
            answers: {
              "The process of selling off underperforming assets": false,
              "The distribution of investments across different asset classes": true,
              "The analysis of an asset's expected returns": false,
              "The purchase of short-term assets for quick gains": false,
            }),

        QuestionModel(
            question: "What type of risk is associated with changes in interest rates, exchange rates, and other market prices?",
            answers: {
              "Systematic risk": true,
              "Unsystematic risk": false,
              "Credit risk": false,
              "Liquidity risk": false,
            }),
      ],
    ),
    CourseModel(
      name: "The Role of Finance in Sustainable Development",
      text: "Sustainable development has become a global imperative, requiring a balance between economic growth, social progress, and environmental stewardship. Finance plays a pivotal role in advancing sustainable development goals, driving investment in renewable energy, infrastructure, education, healthcare, and other key sectors. This essay explores the role of finance in sustainable development, examining the challenges, opportunities, and strategies for mobilizing financial resources to support long-term, inclusive, and environmentally sustainable development. One of the critical roles of finance in sustainable development is channeling investments towards environmentally friendly and socially responsible projects. Sustainable finance initiatives, such as green bonds, impact investing, and environmental, social, and governance (ESG) criteria for investment decisions, have gained momentum in aligning financial flows with sustainability objectives. These initiatives aim to direct capital towards projects that promote climate resilience, biodiversity conservation, clean energy adoption, and social equity, fostering sustainable economic growth and mitigating environmental degradation. Furthermore, finance plays a crucial role in addressing the financing gap for sustainable development. Many developing countries face significant challenges in accessing the financial resources needed to achieve sustainable development targets. Innovative financing mechanisms, including public-private partnerships, development finance institutions, and microfinance initiatives, can help bridge the funding gap and catalyze investments in critical areas such as infrastructure development, healthcare access, and education provision.",
      image: "assets/images/courses/course-6.png",
      result: 0,
      questionCount: 15,
      test: [
        QuestionModel(
            question: "What is the term for a financial contract where the buyer has the right?",
            answers: {
              "Futures contract": false,
              "Options contract": true,
              "Forward contract": false,
              "Swap contract": false,
            }),

        QuestionModel(
            question: "What does the term 'NPV' stand for in finance?",
            answers: {
              "Net Profit Value": false,
              "Net Present Valuation": false,
              "Net Present Value": true,
              "New Project Venture": false,
            }),

        QuestionModel(
            question: "What is the primary purpose of financial risk management?",
            answers: {
              "To eliminate all risks from a business operation": false,
              "To identify, assess, and mitigate potential financial risks": true,
              "To maximize speculative investment opportunities": false,
              "To ignore risks and focus solely on profit generation": false,
            }),
        QuestionModel(
            question: "What is the main goal of financial management?",
            answers: {
              "Maximizing profits": false,
              "Minimizing costs": false,
              "Maximizing shareholder wealth": true,
              "Maximizing sales revenue": false,
            }),

        QuestionModel(
            question: "What does ROI stand for in finance?",
            answers: {
              "Return of Investment": false,
              "Ratio of Income": false,
              "Risk of Investment": false,
              "Return on Investment": true,
            }),

        QuestionModel(
            question: "What is the primary function of a financial market?",
            answers: {
              "To provide loans to consumers": false,
              "To facilitate the buying and selling of financial assets": true,
              "To regulate interest rates": false,
              "To provide insurance to investors": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating net present value (NPV)?",
            answers: {
              "Investment cost / Initial cash flow": false,
              "Profit / Investment cost": false,
              "Initial cash flow - Investment cost": false,
              "Sum of present value of cash flows - Initial investment": true,
            }),

        QuestionModel(
            question: "What is the role of a central bank in a country's economy?",
            answers: {
              "Regulating the stock market": false,
              "Setting interest rates and controlling the money supply": true,
              "Providing credit to businesses": false,
              "Facilitating international trade": false,
            }),

        QuestionModel(
            question: "What does the term 'liquidity' refer to in finance?",
            answers: {
              "How easily an asset can be converted into cash": true,
              "A company's ability to repay its debts": false,
              "The level of profitability of an investment": false,
              "The relationship between risk and return": false,
            }),

        QuestionModel(
            question: "Which type of market analysis involves studying historical market data to predict future price movements?",
            answers: {
              "Fundamental analysis": false,
              "Technical analysis": true,
              "Quantitative analysis": false,
              "Behavioral analysis": false,
            }),

        QuestionModel(
            question: "What is the purpose of diversification in investment portfolio?",
            answers: {
              "To concentrate all investments in one asset for maximum return": false,
              "To minimize risk by investing in a variety of assets": true,
              "To limit the number of investment opportunities": false,
              "To maximize short-term gains": false,
            }),

        QuestionModel(
            question: "What is the term for the average rate of return an investor expects?",
            answers: {
              "Risk-adjusted return": false,
              "Effective annual yield": false,
              "Expected return": true,
              "Nominal interest rate": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating compound interest?",
            answers: {
              "Principal x Rate x Time": false,
              "Principal x Rate": false,
              "Principal x Time x (1 + Rate)": false,
              "Principal x (1 + Rate)^Time": true,
            }),
        QuestionModel(
            question: "What is the main goal of financial management?",
            answers: {
              "Maximizing profits": false,
              "Minimizing costs": false,
              "Maximizing shareholder wealth": true,
              "Maximizing sales revenue": false,
            }),

        QuestionModel(
            question: "What does ROI stand for in finance?",
            answers: {
              "Return On Investment": true,
              "Risk Of Inflation": false,
              "Revenue Over Income": false,
              "Rate Of Interest": false,
            }),
      ],
    ),
    CourseModel(
      name: "Digital Transformation in the Financial Sector",
      text: "The digital transformation has revolutionized the financial sector, reshaping the way financial services are delivered, accessed, and managed. This essay explores the impact of digital transformation on the financial industry, examining the opportunities, challenges, and implications of the digital revolution for financial institutions, consumers, and the broader economy. One of the key impacts of digital transformation in the financial sector is the emergence of innovative fintech solutions that have democratized access to financial services. Fintech companies leverage digital technologies, such as mobile applications, artificial intelligence, blockchain, and big data analytics, to offer a wide range of financial products and services, including digital payments, peer-to-peer lending, robo-advisory, and crowdfunding. These fintech innovations have expanded financial inclusion, improved customer experience, and fostered competition and innovation in the financial industry. Moreover, digital transformation has accelerated the shift towards cashless economies and digital payments. The proliferation of mobile wallets, contactless payment technologies, and online banking platforms has transformed the way consumers transact and manage their finances. Digital payments offer convenience, security, and efficiency, reducing reliance on physical currency and enhancing financial transparency and traceability. Furthermore, digital payment ecosystems have the potential to drive economic growth by reducing transaction costs, increasing financial efficiency, and expanding access to financial services for underserved populations.",
      image: "assets/images/courses/course-7.png",
      result: 0,
      questionCount: 10,
      test: [
        QuestionModel(
            question: "What is the formula for calculating net present value (NPV)?",
            answers: {
              "NPV = Initial Investment / Future Value": false,
              "NPV = Initial Investment - Present Value": false,
              "NPV = Cash Flows / Discount Rate": false,
              "NPV = Cash Flows / (1 + Discount Rate)^n": true,
            }),

        QuestionModel(
            question: "What does the term 'diversification' mean in investment?",
            answers: {
              "Putting all eggs in one basket": false,
              "Spreading investment across different assets": true,
              "Selling all assets at once": false,
              "Investing only in one type of stock": false,
            }),

        QuestionModel(
            question: "Which financial statement shows a company's revenues and expenses over a period of time?",
            answers: {
              "Balance sheet": false,
              "Statement of cash flows": false,
              "Income statement": true,
              "Statement of retained earnings": false,
            }),

        QuestionModel(
            question: "What is the role of the Federal Reserve in the US financial system?",
            answers: {
              "Regulate stock markets": false,
              "Set monetary policy and regulate banks": true,
              "Collect taxes": false,
              "Provide insurance for investments": false,
            }),

        QuestionModel(
            question: "What does the term 'liquidity' refer to in finance?",
            answers: {
              "Ability to quickly convert assets into cash": true,
              "Long-term stability of investments": false,
              "Total value of assets owned": false,
              "Ability to borrow money easily": false,
            }),

        QuestionModel(
            question: "What is the purpose of a credit score?",
            answers: {
              "Determining how much a person can borrow": true,
              "Calculating interest on savings accounts": false,
              "Measuring stock market performance": false,
              "Assessing the value of a property": false,
            }),

        QuestionModel(
            question: "What is the function of a stock exchange?",
            answers: {
              "Lend money to individuals and businesses": false,
              "Trade securities such as stocks and bonds": true,
              "Collect taxes from corporations": false,
              "Regulate financial institutions": false,
            }),

        QuestionModel(
            question: "What is the purpose of a budget in personal finance?",
            answers: {
              "Planning for retirement": false,
              "Aiding in long-term financial goals": true,
              "Investing in high-risk assets": false,
              "Obtaining a mortgage": false,
            }),

        QuestionModel(
            question: "What is a 'bull market' in finance?",
            answers: {
              "Period of declining stock prices": false,
              "Period of stagnating stock prices": false,
              "Period of increasing stock prices": true,
              "Period of high inflation": false,
            }),
        QuestionModel(
            question: "What is the purpose of a 401(k) retirement plan?",
            answers: {
              "Provide health insurance for retirees": false,
              "Allow individuals to invest in mutual funds": true,
              "Offer tax-free savings accounts": false,
              "Cover expenses for long-term care": false,
            }),
      ],
    ),
    CourseModel(
      name: "Importance of Financial Education for Young Adults",
      text: "Financial education plays a vital role in ensuring the financial well-being of individuals, especially young adults who are just starting their independent lives. With the complexities of modern financial systems and an increasingly consumer-driven society, the need for comprehensive financial education cannot be overstated. First and foremost, financial education equips young adults with the knowledge and skills necessary to make informed and responsible financial decisions. It covers essential topics such as budgeting, saving, investing, understanding credit and debt, and financial planning, which are critical for achieving financial independence and long-term stability. Without this knowledge, young adults may fall prey to financial missteps that could have long-term consequences on their financial health. Moreover, financial education instills a sense of financial responsibility and discipline in young adults. By understanding the value of money, the impact of their financial choices, and the risks associated with borrowing and lending, they are better equipped to manage their finances prudently. This, in turn, can lead to reduced financial stress and anxiety and help in creating a secure financial future. Furthermore, a sound financial education empowers young adults to navigate complex financial products and services effectively. They can better evaluate different investment options, retirement plans, insurance products, and banking services, enabling them to make choices that align with their financial goals and values. This not only protects them from financial fraud and scams but also fosters confidence in their financial decision-making abilities.",
      image: "assets/images/courses/course-8.png",
      result: 0,
      questionCount: 10,
      test: [
        QuestionModel(
            question: "What does the term 'hegde fund' mean in finance?",
            answers: {
              "Investment fund for charitable organizations": false,
              "Risk management fund for banks": false,
              "Investment fund for high net worth individuals with aggressive strategies": true,
              "Fund for government infrastructure projects": false,
            }),

        QuestionModel(
            question: "What does the term 'capital gains' refer to in investing?",
            answers: {
              "Profits from selling business assets": true,
              "Dividends received from stocks": false,
              "Interest earned from bonds": false,
              "Income from rental properties": false,
            }),

        QuestionModel(
            question: "What is the purpose of a SWOT analysis in business finance?",
            answers: {
              "Assessing market trends": false,
              "Evaluating the company's strengths, weaknesses, opportunities, and threats": true,
              "Developing a marketing strategy": false,
              "Calculating return on investment": false,
            }),

        QuestionModel(
            question: "What is the difference between a traditional IRA and a Roth IRA?",
            answers: {
              "Traditional IRA offers tax-free withdrawals in retirement": false,
              "Roth IRA offers tax deductions on contributions": false,
              "Traditional IRA has required minimum distributions at a certain age": true,
              "Roth IRA has income limits for eligibility": false,
            }),

        QuestionModel(
            question: "What is the function of a central bank in a country's financial system?",
            answers: {
              "Regulate stock markets and protect investors": false,
              "Set monetary policy, control interest rates, and regulate banks": true,
              "Collect taxes from corporations": false,
              "Provide insurance for investments": false,
            }),

        QuestionModel(
            question: "What is the concept of 'opportunity cost' in finance?",
            answers: {
              "Cost of choosing the next best alternative when making a decision": true,
              "Cost of borrowing money from a bank": false,
              "Cost of purchasing insurance for investments": false,
              "Cost of assets owned by a company": false,
            }),
        QuestionModel(
            question: "What is the main goal of financial management?",
            answers: {
              "Maximizing profits": false,
              "Minimizing costs": false,
              "Maximizing shareholder wealth": true,
              "Maximizing sales revenue": false,
            }),

        QuestionModel(
            question: "Which financial statement provides a snapshot of a company's financial position at a specific point in time?",
            answers: {
              "Income statement": false,
              "Statement of cash flows": false,
              "Balance sheet": true,
              "Statement of retained earnings": false,
            }),

        QuestionModel(
            question: "What type of investment carries the highest level of risk?",
            answers: {
              "Stocks": true,
              "Bonds": false,
              "Savings accounts": false,
              "Mutual funds": false,
            }),

        QuestionModel(
            question: "What does ROI stand for in finance?",
            answers: {
              "Return on investment": true,
              "Risk of investment": false,
              "Rate of income": false,
              "Revenue of interest": false,
            }),
      ],
    ),
    CourseModel(
      name: "The impact of digital transformation on financial services",
      text: "In recent years, the financial services industry has undergone a significant transformation due to the advent of digital technology. This has led to the creation of innovative new products and services, as well as changes in the way financial institutions operate and interact with their customers. One of the most noticeable impacts of digital transformation on financial services has been the rise of online banking and mobile payment systems. Customers are now able to manage their accounts, transfer money, and make payments all from the convenience of their smartphones. This has not only made banking more accessible and convenient for consumers, but has also forced traditional banks to invest in their digital infrastructure in order to remain competitive in the market. Another area of financial services that has been heavily influenced by digital transformation is investment and wealth management. Robo-advisors and automated trading platforms have emerged as popular options for individuals looking to invest in the stock market. These digital platforms use algorithms and artificial intelligence to analyze market trends and make investment decisions, often at a fraction of the cost of traditional financial advisors. The impact of digital transformation on financial services has also been felt in the realm of lending and borrowing. Online lending platforms have made it easier for individuals and small businesses to access credit, while also providing a more streamlined and efficient application and approval process. This has disrupted the traditional banking model and forced banks to re-evaluate their approach to lending and customer service.",
      image: "assets/images/courses/course-9.png",
      result: 0,
      questionCount: 10,
      test: [
        QuestionModel(
            question: "Which of the following is not a form of budgeting?",
            answers: {
              "Zero-based budgeting": false,
              "Incremental budgeting": false,
              "Capital budgeting": false,
              "Dynamic budgeting": true,
            }),

        QuestionModel(
            question: "What is the term for the cost of borrowing money?",
            answers: {
              "Interest": true,
              "Dividends": false,
              "Capital gains": false,
              "Revenue": false,
            }),

        QuestionModel(
            question: "What is the ratio that measures a company's ability to meet short-term obligations with its most liquid assets?",
            answers: {
              "Debt to equity ratio": false,
              "Current ratio": true,
              "Return on assets ratio": false,
              "Inventory turnover ratio": false,
            }),

        QuestionModel(
            question: "Which of the following is not an example of a fixed cost?",
            answers: {
              "Rent": false,
              "Salaries": false,
              "Utilities": true,
              "Insurance": false,
            }),

        QuestionModel(
            question: "What does the term 'hedging' refer to in finance?",
            answers: {
              "Investing in commodities": false,
              "Minimizing risk": true,
              "Taking out a loan": false,
              "Maximizing returns": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating the present value of a future cash flow?",
            answers: {
              "PV = FV / (1 + r)^n": true,
              "PV = FV  (1 + r)^n": false,
              "PV = FV  (1 - r)^n": false,
              "PV = FV / (1 - r)^n": false,
            }),
        QuestionModel(
            question: "What type of risk is associated with changes in interest rates?",
            answers: {
              "Market risk": false,
              "Credit risk": false,
              "Interest rate risk": true,
              "Liquidity risk": false,
            }),

        QuestionModel(
            question: "Which financial ratio measures a company's ability to generate profit from its operating activities?",
            answers: {
              "Gross profit margin": true,
              "Debt to equity ratio": false,
              "Return on investment": false,
              "Earnings per share": false,
            }),

        QuestionModel(
            question: "In finance, what does the term 'arbitrage' refer to?",
            answers: {
              "Speculating on future stock prices": false,
              "Taking advantage of price differences in different markets": true,
              "Short-selling a stock": false,
              "Purchasing government bonds": false,
            }),

        QuestionModel(
            question: "Which of the following is a type of financial derivative?",
            answers: {
              "Stocks": false,
              "Options": true,
              "Mutual funds": false,
              "Certificate of deposit": false,
            }),
      ],
    ),
    CourseModel(
      name: "The impact of cryptocurrencies on traditional financial systems",
      text: "Over the past decade, the emergence of cryptocurrencies, such as Bitcoin and Ethereum, has significantly impacted traditional financial systems. These digital currencies operate on decentralized networks using blockchain technology, offering an alternative to fiat currencies and centralized financial institutions. The growing popularity and adoption of cryptocurrencies have raised questions about their impact on traditional financial systems and their potential to disrupt the status quo. One of the key areas of influence is the challenge to traditional banking systems. Cryptocurrencies offer a decentralized and secure alternative to traditional banks for conducting transactions. With cryptocurrencies, individuals can send and receive funds without the need for intermediaries, such as banks, and the associated transaction fees. This raises concerns for banks' revenue streams and their role in facilitating financial transactions. Additionally, the concept of decentralized finance (DeFi) has emerged, with blockchain-based financial services providing alternatives to traditional banking products such as lending or borrowing. Moreover, the rise of cryptocurrencies has prompted central banks and governments to consider their own digital currencies. Central bank digital currencies (CBDCs) are being explored as a way to modernize payment systems, increase financial inclusion, and counter the potential threat posed by private cryptocurrencies. The introduction of CBDCs has significant implications for the future of monetary policy, financial stability, and the role of central banks in the digital age.",
      image: "assets/images/courses/course-10.png",
      result: 0,
      questionCount: 20,
      test: [
        QuestionModel(
            question: "What is the formula for calculating the price-earnings (P/E) ratio?",
            answers: {
              "P/E = Price per share / Earnings per share": true,
              "P/E = Earnings per share / Price per share": false,
              "P/E = Price per share * Earnings per share": false,
              "P/E = Price per share - Earnings per share": false,
            }),

        QuestionModel(
            question: "What type of investment fund is actively managed by a professional portfolio manager?",
            answers: {
              "Hedge fund": true,
              "Index fund": false,
              "Exchange-traded fund": false,
              "Mutual fund": false,
            }),

        QuestionModel(
            question: "In finance, what does the term 'liquidity' refer to?",
            answers: {
              "A company's level of debt": false,
              "A company's level of profitability": false,
              "A company's ability to convert assets into cash": true,
              "A company's level of risk": false,
            }),

        QuestionModel(
            question: "What is the term for a financial market where assets are bought and sold for immediate delivery?",
            answers: {
              "Money market": true,
              "Futures market": false,
              "Derivatives market": false,
              "Capital market": false,
            }),

        QuestionModel(
            question: "Which financial statement shows a company's revenues and expenses over a period of time?",
            answers: {
              "Balance sheet": false,
              "Statement of cash flows": false,
              "Income statement": true,
              "Statement of retained earnings": false,
            }),

        QuestionModel(
            question: "When an investor spreads their investment across different assets to reduce risk, it is called:",
            answers: {
              "Diversification": true,
              "Leverage": false,
              "Speculation": false,
              "Hedging": false,
            }),
        QuestionModel(
            question: "What is the main goal of financial management?",
            answers: {
              "Maximizing profits": false,
              "Minimizing costs": false,
              "Maximizing shareholder wealth": true,
              "Maximizing sales revenue": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating Return on Investment (ROI)?",
            answers: {
              "Net Profit / Total Assets": true,
              "Cost of Goods Sold / Gross Profit": false,
              "Operating Income / Revenue": false,
              "Total Expenses / Net Income": false,
            }),

        QuestionModel(
            question: "What is the role of a financial ratio?",
            answers: {
              "Measuring a company's ability to pay off short-term liabilities": true,
              "Calculating total revenue": false,
              "Forecasting future stock prices": false,
              "Determining employee salaries": false,
            }),

        QuestionModel(
            question: "What does the term 'liquidity' refer to in finance?",
            answers: {
              "A company's ability to generate profit": false,
              "The value of assets after depreciation": false,
              "The ease of converting assets into cash": true,
              "The level of debt a company has": false,
            }),

        QuestionModel(
            question: "What is the purpose of a balance sheet?",
            answers: {
              "To list all expenses incurred by a company": false,
              "To show a company's revenues and expenses over a period of time": false,
              "To demonstrate a company's financial position at a specific point in time": true,
              "To evaluate the performance of company management": false,
            }),

        QuestionModel(
            question: "What is the formula for calculating Earnings Per Share (EPS)?",
            answers: {
              "Net Income / Total Assets": false,
              "Net Profit / Sales Revenue": false,
              "Net Income / Average Outstanding Shares": true,
              "Gross Profit / Operating Expenses": false,
            }),

        QuestionModel(
            question: "What is the concept of 'time value of money' in finance?",
            answers: {
              "The idea that money has different values at different times": true,
              "The concept of saving money for the future": false,
              "The value of money in different countries": false,
              "The impact of inflation on currency value": false,
            }),

        QuestionModel(
            question: "What is the purpose of a cash flow statement?",
            answers: {
              "To show a company's revenues and expenses over a period of time": false,
              "To demonstrate a company's financial position at a specific point in time": false,
              "To evaluate the performance of company management": false,
              "To illustrate the sources and uses of cash in a specific period": true,
            }),

        QuestionModel(
            question: "What does the Debt-to-Equity ratio measure?",
            answers: {
              "A company's ability to pay off short-term liabilities": false,
              "The level of debt financing relative to equity financing": true,
              "A company's ability to cover its interest expenses": false,
              "The percentage of net income retained by the company": false,
            }),

        QuestionModel(
            question: "What is the primary function of a financial market?",
            answers: {
              "To exchange goods and services": false,
              "To facilitate borrowing and lending of funds": true,
              "To provide a platform for labor market transactions": false,
              "To distribute government resources": false,
            }),
        QuestionModel(
            question: "What does the term 'net present value' (NPV) represent in finance?",
            answers: {
              "The present value of future cash flows minus the initial investment": true,
              "The total value of a company's assets": false,
              "The amount of money left after all expenses are paid": false,
              "The sum of all cash flows over a period of time": false,
            }),

        QuestionModel(
            question: "What is the role of a financial planner?",
            answers: {
              "Investing in stocks and bonds for clients": false,
              "Creating a budget for individuals or businesses": true,
              "Evaluating a company's financial performance": false,
              "Negotiating with creditors on behalf of a company": false,
            }),

        QuestionModel(
            question: "What is the concept of 'diversification' in investment?",
            answers: {
              "Investing in multiple assets to reduce risk": true,
              "Investing in a single asset to maximize returns": false,
              "Investing only in government bonds": false,
              "Investing in high-risk, high-return options": false,
            }),

        QuestionModel(
            question: "What is the purpose of financial risk management?",
            answers: {
              "To eliminate all financial risks facing a company": false,
              "To mitigate potential losses from adverse events or market conditions": true,
              "To aggressively pursue high-risk, high-return investments": false,
              "To maximize profitability regardless of risk level": false,
            }),
      ],
    ),

  ];

  List<CourseModel> get getCourses => _list;
}
