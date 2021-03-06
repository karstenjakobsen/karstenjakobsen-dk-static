var React = require('react');

function Education (props) {
  return (
      <div className="c-timeline__item">
        <div className="c-timeline__point t-timeline__point t-primary-bg"></div>
        <div className="o-content">
          <div className="o-grid">
            <div className="o-grid__col-md-5">
              <div className="c-work__timeframe">
                {props.somedate}
              </div>
              <h3 className="c-work__heading">
                {props.someschool}
              </h3>
              <h4 className="c-work__title">
                {props.sometitle}
              </h4>
              <div className="c-work__location">
                {props.somelocation}
              </div>
            </div>
            <div className="o-grid__col-md-7">
              <p>
                {props.description}
              </p>
            </div>
          </div>
        </div>
      </div>
  )
}

module.exports = Education;