Return-Path: <open-iscsi+bncBDOKX2HFVIHBBHG45H7AKGQEUXMUENA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B0C2DC7BE
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Dec 2020 21:29:18 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id i16sf11535283oos.0
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Dec 2020 12:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Qll6F2Qd090PWwcShcxDuaW8BuH3qtBjHvHF6wWiMY=;
        b=pxyJ44qyF/wbmJV/gvZTUhrwV+pgwLqvFOlTBdZ5s0VWzn5EGbZomyrMp7c3F/m7AE
         ANQEJJoKPSJ8zG4xgcTVCn2x7JB6ZmsUgODdwTrza3q1+xi05Jd2PYTiGYwBUjSm2Vu9
         kgLL8QH4Thv+XX+GJLLDFZnbrLCyIahpRuZLfrfcSlhSJRwECffHquesHmfalTsSqL51
         29urQN6oQOc1YNvB5HIpRIjx+NUpb+SFlpzeIlgZIeBN+Seo5uGBo7pVl57K10zYhzzR
         zTLuaysVepQOt6Pg6+eAzCEEY4I1mk+ptMvzZwRIZ2JqQxO6EK28szP8jCF4NH0sUhVc
         zt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8Qll6F2Qd090PWwcShcxDuaW8BuH3qtBjHvHF6wWiMY=;
        b=gy9FmkQtGLAIwakECB3Nc50CZpCdDHguLDtVVPUHu71aOmPwO/B/uMSSsCo1qIi/wX
         ObmeDyeksWKnxTLHjLy4DHUuTwptF207QkTYWUQ5P0LYaQGAuRvixc4zB316wwnx3ost
         PaaVPXtwfbQOkk/MFgWWpnU0jnOVVEKRAAlAYlJSXQfKwMjdsd6UDUoo4E7wLSWJQq88
         NTkWpIMB1wbWqFcgwNzPeW9gURytxq+T9zOTkWq2/uRQEI8mPeVp7gN89r/NxEOR52zZ
         HRTmaf95uWxqmLBOxoNLXP8Tec1tzIDNxLkE7+lDERAUM/puRGPqoK/cNjZz7T6MPfjl
         MKFg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531oaAXIcCINTxDoW5YhnXk+VGwCtpFStazOwz0LO+tqRu42RmCU
	plLut3r44dtg/iJjkBdg49g=
X-Google-Smtp-Source: ABdhPJxumgiJyvbVg43lSsd/J1iY4sFCxmpPI612hu8VBfUSbSDr+c/EPaY+U44EzpYUjkYcpA81sA==
X-Received: by 2002:aca:c757:: with SMTP id x84mr2927991oif.103.1608150557061;
        Wed, 16 Dec 2020 12:29:17 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:aad2:: with SMTP id t201ls5751905oie.1.gmail; Wed, 16
 Dec 2020 12:29:16 -0800 (PST)
X-Received: by 2002:aca:210c:: with SMTP id 12mr3026406oiz.45.1608150556601;
        Wed, 16 Dec 2020 12:29:16 -0800 (PST)
Received: by 2002:a54:4581:0:b029:e3:e173:f488 with SMTP id z1-20020a5445810000b02900e3e173f488msoib;
        Sun, 6 Dec 2020 06:38:51 -0800 (PST)
X-Received: by 2002:a05:6830:1ad7:: with SMTP id r23mr9879539otc.355.1607265531375;
        Sun, 06 Dec 2020 06:38:51 -0800 (PST)
Date: Sun, 6 Dec 2020 06:38:51 -0800 (PST)
From: go xayyasang <goxayyasang@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com>
Subject: Hi help me please
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1352_2135960634.1607265531127"
X-Original-Sender: goxayyasang@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1352_2135960634.1607265531127
Content-Type: multipart/alternative; 
	boundary="----=_Part_1353_1147024122.1607265531127"

------=_Part_1353_1147024122.1607265531127
Content-Type: text/plain; charset="UTF-8"

[root@target ~]# iscsiadm -m node -o show
iscsiadm: No records found

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/dd922e70-a4b0-4d61-aed1-ef8eca287926n%40googlegroups.com.

------=_Part_1353_1147024122.1607265531127
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>[root@target ~]# iscsiadm -m node -o show</div><div>iscsiadm: No recor=
ds found</div><div><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/dd922e70-a4b0-4d61-aed1-ef8eca287926n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/dd922e70-a4b0-4d61-aed1-ef8eca287926n%40googlegroups.com</a>.=
<br />

------=_Part_1353_1147024122.1607265531127--

------=_Part_1352_2135960634.1607265531127--
