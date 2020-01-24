Return-Path: <open-iscsi+bncBC24JGEJRMKRBJONVXYQKGQEYFANWRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DF5149077
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 22:50:30 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id ce2sf2012952qvb.23
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 13:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kSXeEPz0fMBakvKr1m+cO55BfpR8dGocRQ8cnNysEDA=;
        b=KZiyDuaV3PKuSyOR+SbmRD05IJkldF0oRKi+d2zyIdJBFnaSYUfQNfLj0NA9yIZ/fl
         6a0wkJgscVbIUA5R5fPiR0irD25ZDTJNg9TKKL6BoZ5l+RWGqXcAW5Fbayj5OQdmF0yk
         3qpVvR6gvLUTkvS6dyXBaWcvfYczFs3RXUYiV8fOrUVF9nNHpwW4C4B+auK4/jjkHXW1
         o8Ugwh+Kkw/ImInnwT0eilI92WXLfQN+pMlJbsx30ur3dDQb/vWuFWcuMOreZ9dE9Vbe
         3TlTZoDyFkfvjj76Pb3gFPAhp+ZfCFIRuMUwc6DMth9LKR0bj5NjrrYX1X/A06VfTMnb
         TvYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kSXeEPz0fMBakvKr1m+cO55BfpR8dGocRQ8cnNysEDA=;
        b=VOKSPOOJNlVjnhoDqlUTND9ZR8lJa+aMvqu0m8FbzUj49adt8BwiMMRSnYamOv/2Zo
         0WvTORLam66og70ZzfHdTHP/n03bC73luvGCnXVCwuQLtd6BoMfmhLk3WO7tWYHcv7tZ
         0iDNvveIvSFDP37vSDCj1pXdl56FXLLWztGkl62DId5RkA6oJYEmHQHrUUBNkdPmYWoy
         bQ0u+alDIaftRm+CBkEBVGuWCMsLGVdJK/QATT/slf+Ms1jwgOjn8gJiYNccOzFNth8V
         CJQtiWn2gdYUAAt9lgK2JV9ZwM2FemPwRGZnl7q4ochGDJJtBP+wCMpi7kr3bup9nZlA
         oqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kSXeEPz0fMBakvKr1m+cO55BfpR8dGocRQ8cnNysEDA=;
        b=WLTyfN9TUjijmV9Xd+N9X2kcrd++mW6lDew3mq4uWTEqZzBlUDlBA+ac2K+gqGS+VQ
         cW5aUSGuXKBK8fiUzh/Dlr4Y3ga43BuzBJNvtCou9mAze4jB6b3cSXVy+Biu1xDjmGc6
         JbrK605UF5Cs2kNXdccVFMUq9YE+IisCM+knjc6pqMRN3WbEblCgfSqV3OQ0aJtwGRgH
         xwucZBbXbf9/Oom9J5Nwo9g3NGOCjIZ1oLEOiIONXQWHtpRg7Pzpx4MGMd+YuXDcJfJV
         zf608HNRVjMvNnZHrxtoQ1t66oMrkAnrp/TA6GPVZ2kzmODGeCHQjwIsjpY4aGowRLNT
         h/9w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWvFqOZdt9NIn1mmx40Z6NzsZH5KocUme+sI4cPw/FunGbu7kJY
	MCQHUlQSsUjg7YeBjEBpST8=
X-Google-Smtp-Source: APXvYqzFdJ7XZ1u0TvCmJ5VvkEQuQCmtw+YDzJOMrsZbnWAyHCSAb4sk0TC8o0V7jDybBmCGywHJfQ==
X-Received: by 2002:aed:376a:: with SMTP id i97mr4572465qtb.44.1579902629753;
        Fri, 24 Jan 2020 13:50:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:f507:: with SMTP id l7ls1664199qkk.0.gmail; Fri, 24 Jan
 2020 13:50:29 -0800 (PST)
X-Received: by 2002:a37:9c0f:: with SMTP id f15mr5094189qke.297.1579902629235;
        Fri, 24 Jan 2020 13:50:29 -0800 (PST)
Date: Fri, 24 Jan 2020 13:50:28 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
Subject: iSCSI and Ceph RBD
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1600_2035334052.1579902628682"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_1600_2035334052.1579902628682
Content-Type: multipart/alternative; 
	boundary="----=_Part_1601_1207589424.1579902628682"

------=_Part_1601_1207589424.1579902628682
Content-Type: text/plain; charset="UTF-8"

Hi,

I have some questions regarding iSCSI and Ceph RBD. If I have understood 
correctly, the RBD backstore module 
on target side can translate SCSI IO into Ceph OSD requests. The iSCSI 
target driver with rbd.ko can expose Ceph cluster
on iSCSI protocol. If correct, then that all is happening on target side.  

My confusion is what is  happening on client side?

Meaning, does linux mainline kernel code called "rbd" has any role with  
Open-iSCSI initiator on client side? To put it more simple, 
is there any common ground for both protocols (iSCSI and rbd) in the linux 
kernel  of the client side? 

Thanks :-)

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/dc5e17db-5e78-49ff-be38-a17706428655%40googlegroups.com.

------=_Part_1601_1207589424.1579902628682
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have some questions re=
garding iSCSI and Ceph RBD. If I have understood correctly, the RBD backsto=
re module=C2=A0</div><div>on target side can translate SCSI IO into Ceph OS=
D requests. The iSCSI target driver with rbd.ko can expose Ceph cluster</di=
v><div>on iSCSI protocol. If correct, then that all is happening on target =
side.=C2=A0=C2=A0</div><div><br></div><div>My confusion is what is=C2=A0 ha=
ppening on client side?</div><div><br></div><div>Meaning, does linux mainli=
ne kernel code called &quot;rbd&quot; has any role with=C2=A0 Open-iSCSI in=
itiator on client side? To put it more simple,=C2=A0</div><div>is there any=
 common ground for both protocols (iSCSI and rbd) in the linux kernel=C2=A0=
 of the client side?=C2=A0</div><div><br></div><div>Thanks :-)</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/dc5e17db-5e78-49ff-be38-a17706428655%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/dc5e17db-5e78-49ff-be38-a17706428655%40googlegroups.com</a>.<b=
r />

------=_Part_1601_1207589424.1579902628682--

------=_Part_1600_2035334052.1579902628682--
