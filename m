Return-Path: <open-iscsi+bncBCBYNVUV2QIBBDVSU2CAMGQEUCD5NLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3191436DE13
	for <lists+open-iscsi@lfdr.de>; Wed, 28 Apr 2021 19:19:12 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id p2-20020ad452e20000b0290177fba4b9d5sf28663586qvu.6
        for <lists+open-iscsi@lfdr.de>; Wed, 28 Apr 2021 10:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g5rA5twbimedZ1WxjW9lkkct7eDcrsaXZZR1EG9kEOY=;
        b=KPqsj0YlKybYJzpIlXHKzhsCdTT+19INniBFiQDZlBjapJZZdB24zPz+FdxMcmrtCJ
         T9vNj0ZpOFObo+eAbAqmO02KH9wu3P6/mfhJ2PtBBS+W/R7Wafh/DcEfjtRHiOLPuXho
         LajUT5hZ6bV57PTa36ZmZRbhv95rCKR5NXndFaYV61Eelux5Hgc3UcPyvwl6B0FZ0fwr
         2DGRfWdqP5Z3NHaiUeRdjdhjiz5zL2CjZM6QawpyzjHXOIr5VRFDv8PNP8iw8uJQ/fef
         6W0vVy5arvjjaFCwah3TvArw0RR66igJoRcat6+RiDmTT+O/Rjx+xJWVb5glImzC9QMd
         HapQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g5rA5twbimedZ1WxjW9lkkct7eDcrsaXZZR1EG9kEOY=;
        b=WUi6GwnC2/4ph/GdXBIzCJZW5NGSe0nsEPDmk0PTUAghiwFvsYf4lX3SHqplmGtd1F
         b9Q6USOUXah/Xhf2hNijtYN5FH6JoUz0t8k6p3Z/13oWmOiZzHltDZhpEpELlRZf9B9V
         KEThcnVEyGvBbJGrDe9L1eS9zinWr2eTy8HRTPhTgmCbCqwf40nhX4fQjMS8jU3KGE48
         0rsan+/mormva95XLkWFnyelt/UAhGdAXpeVxSph95WQKV4Lu1HSdo/sy64NZWAZtEiw
         hka6Ui8T8d+lHpFYf6GOcD/ML6O/Kbx7DeGlbbqiU3L4oj/IY/JbOi/gusbkr0XRigG8
         FaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5rA5twbimedZ1WxjW9lkkct7eDcrsaXZZR1EG9kEOY=;
        b=Pu5/wi2nAQ0208tvjpQ+Pm2NYdIW4sQDunuRGRtktc7OLZlADp9FoAq0ZTsOKWf25R
         X8Rbj1KB7lBlqp1NxpvRrsuvnnfO3XwkmpByXXCmQCTc2gUr/eoOfP6GZMVzy/Czo9mQ
         gsdnkTttWZqJZswUBChSPXrvA3jVZRVJ9zDLyf8JZbSM613SIFgTnnUgJErAVGnf27sP
         m595ywKQdqkdgQa2rLChtBWaa6ykx1wx7KnXy/vUaRx9cSZVggna2Slky0BcrXrHPHqp
         WqfOufzepZB19fI9f1XcR3j4dD3J2ULcPLxHdWrjPe71ZDHKGYYSxgboRnZ/g7OxxTFO
         WN6Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530PD+1d8CoSsTHQqYwThjYz70nTf6NG9vaCevNdog6yuwrf8zcv
	hrCuCiauBNZG0j8q6qrgs7Q=
X-Google-Smtp-Source: ABdhPJw2LDCCsZnID/TOWYN4KhQYfKOSFkQsceuItfu8lKRXL7xuDlUS8KHa5tPoAHuQShS+G3z6Aw==
X-Received: by 2002:a37:8906:: with SMTP id l6mr30832948qkd.198.1619630351013;
        Wed, 28 Apr 2021 10:19:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:718b:: with SMTP id w11ls160280qto.3.gmail; Wed, 28 Apr
 2021 10:19:10 -0700 (PDT)
X-Received: by 2002:ac8:7409:: with SMTP id p9mr19039284qtq.208.1619630350388;
        Wed, 28 Apr 2021 10:19:10 -0700 (PDT)
Date: Wed, 28 Apr 2021 10:19:09 -0700 (PDT)
From: indra jeet <swarnendra1029@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0b82ba52-fa44-46a1-b2f0-d2f985f43e11n@googlegroups.com>
Subject: learning about iscsi discovery, login and logout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2691_1613910907.1619630349680"
X-Original-Sender: swarnendra1029@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_2691_1613910907.1619630349680
Content-Type: multipart/alternative; 
	boundary="----=_Part_2692_1181194293.1619630349680"

------=_Part_2692_1181194293.1619630349680
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

I am trying to understand open-iscsi implementation. 

Firstly, I picked up following paths to explore,

   1. discovery
   2. login/logout

1. Discovery
In this code path, we usually call to 

discovery_sendtarget
--> request_target
     --> iscsi_io_send_pdu,  which basically writes on a socket opened by 
iscsiadm, and reads from the socket by "iscsi_io_rev_pdu".

2. login/logout
In this code path, it get usually triggers to 

mgmt_ipc_session_login
   -> __session_login_task
        -> iscsi_conn_connect
                --> iscsi_sched_ev_context
                        --> session_conn_poll 
                                --> iscsi_login_req
                                      --> iscsi_io_send_pdu

In my understanding, discovery, login/logout does not involve iscsi kernel 
and send pdu over open by userspace socket.

Is that my understanding correct and can somebody point me out more pointer 
for these path.

Thanks in advance.

---
Indra

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0b82ba52-fa44-46a1-b2f0-d2f985f43e11n%40googlegroups.com.

------=_Part_2692_1181194293.1619630349680
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Everyone,<div><br></div><div>I am trying to understand open-iscsi implem=
entation.&nbsp;</div><div><br></div><div>Firstly, I picked up following pat=
hs to explore,<br></div><div><ol><li>discovery</li><li>login/logout</li></o=
l></div><div>1. Discovery</div><div>In this code path, we usually call to&n=
bsp;</div><div><br></div><div>discovery_sendtarget</div><div>--&gt; request=
_target</div><div>&nbsp; &nbsp; &nbsp;--&gt; iscsi_io_send_pdu,&nbsp; which=
 basically writes on a socket opened by iscsiadm, and reads from the socket=
 by "iscsi_io_rev_pdu".</div><div><br></div><div>2. login/logout</div><div>=
In this code path, it get usually triggers to&nbsp;</div><div><br></div><di=
v>mgmt_ipc_session_login</div><div>&nbsp; &nbsp;-&gt;&nbsp;__session_login_=
task</div><div>&nbsp; &nbsp; &nbsp; &nbsp; -&gt;&nbsp;iscsi_conn_connect</d=
iv><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --&gt;&nbsp=
;iscsi_sched_ev_context</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --&gt;&nbsp;session_conn_poll&nb=
sp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --&gt;&nbsp;iscsi_login_=
req</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --&=
gt;&nbsp;iscsi_io_send_pdu</div><div><br></div><div>In my understanding, di=
scovery, login/logout does not involve iscsi kernel and send pdu over open =
by userspace socket.<br><br>Is that my understanding correct and can somebo=
dy point me out more pointer for these path.</div><div><br></div><div>Thank=
s in advance.</div><div><br></div><div>---</div><div>Indra</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0b82ba52-fa44-46a1-b2f0-d2f985f43e11n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0b82ba52-fa44-46a1-b2f0-d2f985f43e11n%40googlegroups.com</a>.=
<br />

------=_Part_2692_1181194293.1619630349680--

------=_Part_2691_1613910907.1619630349680--
