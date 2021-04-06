<template>
  <div class="global-footer">
    <div
      class="grid-x grid-margin-x grid-padding-x large-padding-collapse large-margin-collapse"
    >
      <div class="cell large-4 show-for-large">
        <img
          class="white-ucsc-logo"
          src="~/assets/images/uc-santa-cruz-reverse.svg"
        />
        <p class="address">1156 High Street, Santa Cruz, CA 95064</p>
      </div>
      <div class="cell large-4">
        <div class="toggle-trigger" data-toggle="connect">
          <h5 class="underline">
            Connect <span class="thin">to UCSC</span>
            <i class="fas fa-plus hide-for-large"></i>
          </h5>
        </div>

        <div
          id="connect"
          class="show-for-large nav-social"
          data-toggler=".show-for-large"
        >
          <ul>
            <li>
              <a href="javascript:void(0)" target="_blank"
                ><i class="fab fa-twitter"></i
              ></a>
            </li>
            <li>
              <a href="javascript:void(0)" target="_blank"
                ><i class="fab fa-instagram"></i
              ></a>
            </li>
            <li>
              <a href="javascript:void(0)" target="_blank"
                ><i class="fab fa-facebook-square"></i
              ></a>
            </li>
            <li>
              <a href="javascript:void(0)" target="_blank"
                ><i class="fab fa-youtube"></i
              ></a>
            </li>
            <li>
              <a href="javascript:void(0)" target="_blank"
                ><i class="fab fa-linkedin"></i
              ></a>
            </li>
          </ul>

          <ul class="menu vertical show-for-large">
            <li><a href="javascript:void(0)" aria-label="">@UCSantaCruz</a></li>
            <li><a href="javascript:void(0)" aria-label="">#bananaslugs</a></li>
          </ul>
        </div>
      </div>
      <div class="cell large-4">
        <div class="toggle-trigger" data-toggle="engage">
          <h5 class="underline">
            Engage <span class="thin">with UCSC</span>
            <i class="fas fa-plus hide-for-large"></i>
          </h5>
        </div>

        <div id="engage" class="show-for-large" data-toggler=".show-for-large">
          <ul class="menu vertical">
            <li><a href="#javascript:void(0)">Site Feedback</a></li>
            <li><a href="#javascript:void(0)">Employment</a></li>
            <li><a href="#javascript:void(0)">Volunteer</a></li>
            <li><a href="#javascript:void(0)">Emergency Information</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="grid-x grid-margin-x text-center mt-25">
      <div class="cell large-4 hide-for-large">
        <img
          class="white-ucsc-logo"
          src="~/assets/images/uc-santa-cruz-reverse.svg"
        />
        <p class="address">1156 High Street, Santa Cruz, CA 95064</p>
      </div>
      <div class="nav-global cell">
        <ul class="primary-set">
          <li><a href="#javascript:void(0)">Accreditation</a></li>
          <li><a href="#javascript:void(0)">Non-Discrimination Policy</a></li>
          <li>
            <a href="#javascript:void(0)">Privacy Policy &amp; Terms of Use</a>
          </li>
          <li>
            <a href="#javascript:void(0)"
              >Sexual Violence Prevention &amp; Response</a
            >
          </li>
        </ul>
        <p>
          &copy;2019 Regents of the University of California.<br />All Rights
          Reserved.
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'FooterGlobal',
}
</script>

<style scoped lang="scss">
.global-footer {
  padding: 0;
  color: $white;
  h4,
  h5 {
    color: $white;
    font-weight: bold;
    text-transform: uppercase;

    span {
      font-weight: 100;
    }

    &.underline {
      &::after {
        margin: 1rem 0;
        padding: 0;
        display: inline-block;
        // display: none;
        // @include breakpoint(large){
        //     display: inline-block;
        // }
      }
    }
  }

  h4 {
    font-size: 1rem;
    display: block;
    // @include breakpoint(large){
    //     font-size: 1.635rem;
    // }
  }
  .white-ucsc-logo {
    max-width: 140px;
    margin-bottom: 10px;
  }
  .menu {
    li {
      border-bottom: 1px solid rgba(255, 255, 255, 0.2);
      // @include breakpoint(large){
      //     border: none;
      // }
    }
  }
  a {
    padding-left: 0;
    // @include breakpoint(large){
    //     padding: 0.5rem 3rem;
    // }
  }
  .nav-social {
    text-align: left;

    ul {
      list-style: none;
      margin: 0;
      padding: 0;
    }

    li {
      display: inline-block;
      font-size: 1.4rem;
      margin: 0 0.2rem 0.25rem 0.2rem;

      &:first-child {
        margin-left: 0;
      }
    }

    a {
      display: block;
      line-height: 1;
      color: white;

      .fab {
        font-size: 0.9rem;
        // @include breakpoint(large) {
        //   font-size: 1.3rem;
        // }
      }
    }

    .menu {
      li {
        margin: 0 !important;
      }
      a {
        font-size: 0.8rem !important;
      }
    }
  }
  .toggle-trigger {
    padding: 10px 0;
    background-color: transparent;
    width: 100%;
    margin-bottom: 10px;
    font-weight: 400;
    border-bottom: 1px solid #3977a7;
    cursor: pointer;
    text-align: left;

    i {
      margin-top: 5px;
      margin-right: 10px;
      float: right;
    }

    // @include breakpoint(large) {
    //   padding: 0;
    //   background-color: transparent;
    //   border-bottom: none;
    //   font-weight: 900;
    //   margin: 0;
    //   cursor: default;
    // }
  }
  .nav-global {
    margin: 0 auto 0 auto;
    text-align: center;

    p,
    a {
      font-size: 0.8rem;
      color: #b5c4d0;
    }

    p {
      margin: 0;
    }

    ul {
      list-style: none;
      margin: 0;
      padding: 0;

      &.primary-set {
        margin-bottom: 5px;
        a {
          color: $white;
          text-decoration: underline;
        }
      }
    }

    li {
      display: inline-block;
      margin-right: 1rem;

      a {
        padding: 0;
        text-decoration: none;

        &:hover {
          text-decoration: underline;
        }
      }
    }
  }
  .underline {
    display: block;

    // @include breakpoint(large) {
    //     display: inline-block;
    // }
  }
}
</style>
