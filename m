Return-Path: <open-iscsi+bncBDWOZE472MPRBPORT2EQMGQE2CSJNQY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC483F8A56
	for <lists+open-iscsi@lfdr.de>; Thu, 26 Aug 2021 16:44:14 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id u8-20020a0cec880000b029035825559ec4sf219207qvo.22
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Aug 2021 07:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PRhTnUxIO3xdvu4BynCMFh9dkKeRvuvrzeDX8xj5l30=;
        b=UnSy+E2PboFRT8tN/ueD5emKgMlxEfJMgqaHRH346jDWoz11YoOOf3ft3LsA5pKiD0
         XvGOPL8yhYQmoPO970BcGx1n5lcesY0TlO4th87jejCjy0/VSzsqIPdmTbo6bjoPD1sX
         5RDo5W7NmVm70b+yOXx+k1Nfk85zjKBVfOK+FFFgh26ZwePh8WXrA9mpNLBbEQzao1du
         p0ZmxCQsMx+aEeLGdADBn0WgezBUXX/XSPkSfOzXGmvn50yLKGfND7L/xsp8SgXcpPhN
         bHXg9AUIFFM0/HuGEQbMp+2boAKLSjfuF01YL8NVJJRFAfUebO+2dWB0VyQ4g7ixVmUl
         UIGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PRhTnUxIO3xdvu4BynCMFh9dkKeRvuvrzeDX8xj5l30=;
        b=R4KquXb9mfCCKRoHTtP305k0D+Ak1nh1gfax8CjWjSfzGE1wF/7XRFkx1xmLwV4lbC
         LMkT60AdHSY52ROp4XHFM2KfOCsVX6Rc9Umjo4YqgUKYiWaiYi87VxwePVk2OuhP2epI
         olO26B7Cz76x7VigLPtexNIc+NVCcmPY0zQDDgjuEB/7k9Ec306RYGQV/XAjFBDqQAJZ
         Ti1suMDLMK/BUl0v63XH5IW1VqDD134lo4YU+yK1M8Ztl0xFNL0Y/AQoGHbDO7IjPQCi
         4BtbiUKhDbQISJ2goiaKtPz01JrA4Q36B0WOjOk+8Eu4ec57h//gDA8Qz2kixU9Xd/Z4
         2W/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRhTnUxIO3xdvu4BynCMFh9dkKeRvuvrzeDX8xj5l30=;
        b=PbubymGGzC373pjr2ExbNldX4yGeK00jAglTeMnZeaQw0DERh/omi4dBKtOwKr3RRN
         pxA2jmUfFcMyTluj/LEKHzmGaAqEGeQkckVvOwfAzfEzz7jW3AMyCr/HUC7R11EsLb/Q
         QeACKJeY0UZEj9yBRsrauwg4hbk5DNyZj24iIwHRYvQlpnEjFRIov51jrDEnXAR2uBAK
         V8LuSWAwaCpg5LmpjRi04Z37aJRWaZ6TXe2zyO3DM1bnLX50kRkPNdWmvBmTHIERFRT6
         /9GXkRozxNEMX7Z4duoO6BoU2PHh4t/9gS8hWXenDRZsrByxdTubeHyxskOqEri2ESks
         A48w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5335dAa9pZKQPYGsVnjLVenh6nTFgssrcsmT9cze9P7G8TB3USwC
	3lNoIYtHHImvVbjZXet8Mo4=
X-Google-Smtp-Source: ABdhPJxt4YX9qaNT6VMn5uJrXFafXk1tmIuBwEwKgRylk+hg+q5CEfw4mXl3pyKCk4roGUdOZ+rbGw==
X-Received: by 2002:ad4:4b14:: with SMTP id r20mr3438530qvw.61.1629989053919;
        Thu, 26 Aug 2021 07:44:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:23cf:: with SMTP id hr15ls1805394qvb.4.gmail; Thu,
 26 Aug 2021 07:44:13 -0700 (PDT)
X-Received: by 2002:a0c:aa52:: with SMTP id e18mr1130181qvb.38.1629989053256;
        Thu, 26 Aug 2021 07:44:13 -0700 (PDT)
Date: Thu, 26 Aug 2021 07:44:12 -0700 (PDT)
From: Fernando Perfumo <fp2031@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n@googlegroups.com>
Subject: linux iscsi target setup for IP camera
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1442_26410345.1629989052485"
X-Original-Sender: fp2031@gmail.com
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

------=_Part_1442_26410345.1629989052485
Content-Type: multipart/alternative; 
	boundary="----=_Part_1443_294057490.1629989052485"

------=_Part_1443_294057490.1629989052485
Content-Type: text/plain; charset="UTF-8"


I'm trying to set up iscsi target on Debian 11 for recording video from 
Bosch ip cameras.

I can connect to the target from windows, but not from the cameras.

tcpdump shows in the negotiation's packets the presence of "X-" parameters 
on the camera TCP packets.
I've seen in the iscsi RFC these extra parameters are optional.

Does somebody knows if the existence of "X-" parameters can break the 
negotiation of targets and luns on iscsi linux implemetations?

There is no more references to X- and X# parameters on internet except on 
the original iscsi RFC, else I would have found some. 

I want to modify the iscsi sources to allow admins to test and supply 
convenient responses to 'X-com.whatever' maker's parameters, and I would 
appreciate your suggestions.

I've heard these ip cameras work too with microsoft's iscsi -non bosch 
altered- target implementations, so it may be only matter of supplying 
convenient responses to X- parameters.

Thanks







  


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n%40googlegroups.com.

------=_Part_1443_294057490.1629989052485
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><div>I'm trying to set up iscsi target on Debian 11 for recording video=
 from Bosch ip cameras.</div><div><br></div><div>I can connect to the targe=
t from windows, but not from the cameras.</div><div><br></div><div>tcpdump =
shows in the negotiation's packets the presence of "X-" parameters on the c=
amera TCP packets.<br></div><div>I've seen in the iscsi RFC these extra par=
ameters are optional.</div><div><br></div><div>Does somebody knows if the e=
xistence of "X-" parameters can break the negotiation of targets and luns o=
n iscsi linux implemetations?</div><div><br></div><div>There is no more ref=
erences to X- and X# parameters on internet except on the original iscsi RF=
C, else I would have found some. <br></div><div><br></div><div>I want to mo=
dify the iscsi sources to allow admins to test and supply convenient respon=
ses to 'X-com.whatever' maker's parameters, and I would appreciate your sug=
gestions.</div><div><br></div><div>I've heard these ip cameras work too wit=
h microsoft's iscsi -non bosch altered- target implementations, so it may b=
e only matter of supplying convenient responses to X- parameters.</div><div=
><br></div><div>Thanks<br></div><div><br></div><div> <br></div><div><br></d=
iv><div><br></div><div> <br></div><div><br></div><div><br></div><div> &nbsp=
; <br></div><div><br></div><div><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n%40googlegroups.com</a>.=
<br />

------=_Part_1443_294057490.1629989052485--

------=_Part_1442_26410345.1629989052485--
