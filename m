Return-Path: <open-iscsi+bncBC755V5RXMKBBMPWW3XAKGQE6I72L6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B356FCFC1
	for <lists+open-iscsi@lfdr.de>; Thu, 14 Nov 2019 21:38:10 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id 22sf4852015qtw.10
        for <lists+open-iscsi@lfdr.de>; Thu, 14 Nov 2019 12:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9LihLIWB5S5edIQ8Rm+aHzZO+AvUrwfMtAZNeQD4HM=;
        b=WfYMrQ1fw60jyuqIRe5iYG88dPDhL/swk0u1mEIdDlYtK3vvkJohkYU6EqBvkXQo+W
         xl5pDR4mYpesV/TWvm6UWlE/Mdgba+HsZFH6hMCSpfD0NEo73oz4RqsOQFt9N+K33oeo
         C5MSOaf+JYdBSr1lEXXGPV/kbCWLGPFIN8XMh4mJkMH6rpvKmhHct3fTzHBP6475HHgv
         M8hWi1nsy03G44MSGi2Wehd2pFRXhJjbV4MaCcRMYt6UuhpRvpMBUzS+fTsjIa5dZg2h
         25PAQL3wcL2OzKuPs0FUbfxx2+RCwFuTUTaZkROJ8BVq0kqYQTwERYbr1/DeOjYhVarA
         VuTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n9LihLIWB5S5edIQ8Rm+aHzZO+AvUrwfMtAZNeQD4HM=;
        b=rwQ71ILCQXB5ub+y4WjpHiYEVluE3aAoGwwyanKN9IXWCasxqJndD37Qv3VPi2mNlH
         rwCZ+v6n7yCRgyn/060HqB2yBg1AnrtyolUu9StoFpJA3oiS4u//yY/bkbHDAXmNgl4F
         hX3OApc/q9ZjYEkIC7tLGfokMiUfkGhQz/Y8uRAERAnLkgG7v+t8J6iDs1CW1OQ9pE/+
         k4cmc0C0kOG663SmlsGB2Mng6j5rjADe3ilDS5B8tv952Fzf1AgJzJRYrXOU9y73iqRT
         ifDBGy2g3620Ij/utS5Q7Ariz1BkNybSc/GNtBsaWTMqg/Jfxx1WIexoz24MckETB2eu
         HLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n9LihLIWB5S5edIQ8Rm+aHzZO+AvUrwfMtAZNeQD4HM=;
        b=eVKS0nU0I3hb0kyaJqa8MCxz46RNYh5d91VXAIHZMOZzCNezKZEeLOOwMOPFUYF3oH
         R+R+XKN4MzMV6BkcQb5URudrv7DZM592u56F4JP9s9PMV0eCTvn7KlG6GOZuasoSmF8F
         /jtWQW5wojw2pSo9+DyaI+JwPObAIldCgAi0Y6ZEfGORgz/SwW6riQwaEVFk0ZSg25Xf
         xqSkWT2MrT2h1F61U2uQ9dWAJzt9kP320kODM/5OSZT4PuuiyBB4g8ge8DaGXxL3GrXv
         EGg7dqL1vj+l/Ef8TVggqWTPTwlUND8nVjuFgjYuUZTy39zB/T2WDkstVoYojF0gf/QR
         B+JA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWY0J8PBUjsvvpsCmHenAuJVLYvZo6wfVV5Naj+5WlCjAtG2SM/
	VeGUv/heJOoMgNR9/9vtpU0=
X-Google-Smtp-Source: APXvYqzJoU1vK9DpsCobRgetLxCiCwRCmsoiVojt0Cml61rN/I0qjYH3fNCZsWP7pBMQ6lzVxw1SlQ==
X-Received: by 2002:ac8:30f4:: with SMTP id w49mr10584878qta.35.1573763889487;
        Thu, 14 Nov 2019 12:38:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:386:: with SMTP id q6ls1332305qkm.13.gmail; Thu, 14
 Nov 2019 12:38:09 -0800 (PST)
X-Received: by 2002:a37:8846:: with SMTP id k67mr5415551qkd.491.1573763888842;
        Thu, 14 Nov 2019 12:38:08 -0800 (PST)
Date: Thu, 14 Nov 2019 12:38:07 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <38c6b2f0-2e96-4a77-a243-4c2b0e90db3f@googlegroups.com>
Subject: New Version Tagged
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2_1659795692.1573763887828"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_2_1659795692.1573763887828
Content-Type: multipart/alternative; 
	boundary="----=_Part_3_1638573306.1573763887829"

------=_Part_3_1638573306.1573763887829
Content-Type: text/plain; charset="UTF-8"

I have tagged version 2.1.0 of open-iscsi.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/38c6b2f0-2e96-4a77-a243-4c2b0e90db3f%40googlegroups.com.

------=_Part_3_1638573306.1573763887829
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have tagged version 2.1.0 of open-iscsi.<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/38c6b2f0-2e96-4a77-a243-4c2b0e90db3f%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/38c6b2f0-2e96-4a77-a243-4c2b0e90db3f%40googlegroups.com</a>.<b=
r />

------=_Part_3_1638573306.1573763887829--

------=_Part_2_1659795692.1573763887828--
