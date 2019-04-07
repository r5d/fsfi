/**
 *
 * @licstart  The following is the entire license notice for the
 *  JavaScript code in this page.
 *
 * Copyright (C) 2019 Free Software Foundation of India
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @licend  The above is the entire license notice
 * for the JavaScript code in this page.
 *
 */

document.addEventListener('DOMContentLoaded', () => {
    const lNavBurgers = Array.prototype.slice.call(
        document.querySelectorAll('.navbar-burger')
    );
    if (lNavBurgers.length < 1) {
        return;
    }

    const oNavBurger = lNavBurgers[0];
    oNavBurger.addEventListener('click', () => {
        /**
         * Get the target string from the "data-target" attribute.
         */
        const sTarget = oNavBurger.dataset.target;
        const oTarget = document.getElementById(sTarget);

        oNavBurger.classList.toggle('is-active');
        oTarget.classList.toggle('is-active');
    });
});
