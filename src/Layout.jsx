import { faArrowRightFromBracket, faBars, faBox, faHome, faHotel } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import React, { useContext, useState } from 'react';
import { Outlet, Link, useNavigate } from 'react-router-dom';
import profilePic from './assets/user-profile.png'
import packagePic from './assets/package-icon.png'
import { AuthContext } from './AuthContext';

const Layout = () => {
  const navigate = useNavigate();
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const { username , logout } = useContext(AuthContext);

  const toggleSidebar = () => setSidebarOpen(!sidebarOpen);
  const closeSidebar = () => setSidebarOpen(false);

  return (
    <div className="page">

      <div className="navbar">
        <div className='navbar-logo'>
          <FontAwesomeIcon icon={faBars} onClick={toggleSidebar} />
          <h4>เมนู</h4>
        </div>
        <div className="navbar-profile">
          <p>{username}</p>
          <button className='mybtn btn-black' onClick={() => {
            logout();
            navigate('/login')
          }}>ออกจากระบบ</button>
        </div>
      </div>


      <div className="content">
        <Outlet />
      </div>

      {sidebarOpen && <div className="backdrop" onClick={closeSidebar}></div>}
      <div className={`sidebar ${sidebarOpen ? 'open' : ''}`}>
        <div className="sidebar-header">
          <img src={packagePic} style={{ width: "50px" }}></img>
          <div className='header-name'>
            <p>ระบบจัดการพัสดุหอพัก</p>
          </div>
        </div>
        <ul>
          <li onClick={closeSidebar}>
            <Link to="/dashboard">🏠 หน้าหลัก</Link>
          </li>
          <li onClick={closeSidebar}>
            <Link to="/mypackage">📦 พัสดุของฉัน</Link>
          </li>
        </ul>
        <hr></hr>
        {/* <h4>สร้างหรือเข้าร่วมหอพัก</h4> */}
        <ul>
          <li onClick={closeSidebar}>
            <Link to="/join-dorm">👥 เข้าร่วมหอพัก</Link> 
          </li>
          <li onClick={closeSidebar}>
            <Link to="/create-dorm">👥 สร้างหอพัก</Link> 
          </li>
        </ul>


      </div>


    </div>
  );
};

export default Layout;
