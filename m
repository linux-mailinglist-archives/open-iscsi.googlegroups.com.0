Return-Path: <open-iscsi+bncBC24JGEJRMKRBYGZ7TYAKGQE2W5G5TY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DD013C72B
	for <lists+open-iscsi@lfdr.de>; Wed, 15 Jan 2020 16:16:50 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id m13sf10906486qka.9
        for <lists+open-iscsi@lfdr.de>; Wed, 15 Jan 2020 07:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eOoHYhLayR4Ja3O4CD4ssf0dwEWJitwglNpEA/qdmtk=;
        b=FRAyHeOQA8If5CaHcIQ95F5ToQcwvnnJJbwT9C6VGtQEK4INmOE5ZOkZDF+iW55WQl
         Z/KFGqSgK/JemyXNqrglSMzxLZt7Tl9hAtguYbLwmcjIafzMJZTHVUqEk05k69Sg3iIL
         VY/VzBAx2j+VD3wv0wxj096H5YjIzdP9pfR4ItHtY3qqWKcIDdIthp1Miu80Gl9eDRNg
         g73x08mugRCBAFua041MUSCgJcR8+c1U6Q77LkoJ2sW/An87YTynU5udJxD2ZYgDUFKE
         G6CM6Dro4wPc6srzCCXK+mmIYyDBlR2aqnNT5mgvG/8VwHsnPQQD7GvzlNaIwj2KrtSh
         AgWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eOoHYhLayR4Ja3O4CD4ssf0dwEWJitwglNpEA/qdmtk=;
        b=A7lZlD+5ZGtGMa7pXEhPfSl2dRgHlqtqR8kOgcKwV7wORrJsIvXvEPR0VZT2fzg1dY
         YqwWYJscycX6LMC1gea66yCo6HSpsUD9v4tY6MoBvGnHz960hetlknbc6ayed7+Or2O/
         WUHMtP3miXJ9Q/+BjO1xLe+3fPHlTRf+/kGZqNAODwAag7FhDTrgYC9eA4WYcRv4D9WN
         e5mgBFo9wdyeJU8qKheiwAYVa7KYaGZdB2sLp+aeYMAu6M47qG0dtlmlVYUXw4oasnBP
         ssLehvCFcvQAjC2isWogVnFFpecJObNN/tcmJvs+RI0VNEzOjzkPKXCTq65F8ngsdUlK
         Ji+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eOoHYhLayR4Ja3O4CD4ssf0dwEWJitwglNpEA/qdmtk=;
        b=kAGLJbjKQbKUuPtQUvEYdTxrTE0JnO7pYe+rYkEXCG4WRwidH5KzDAe1y8IH2roj3g
         gHKMm3aPjRFstc0C4Jd970gdZd+tJazrBmP7hHKMwxukZTCVb90KSWL1do8yo6aWnXA7
         p3VFdiK3VSGA52yaWjnv7cX83EBd+iQFARQJ51JboWJGTgGcva99HK06RVJTsqf/VngA
         qRAksGWpH3v1nCpXwFnz4G6+ICl+BH9e8GxUdJ10luveLxVscB8y75kyfSFASGHpCBsd
         qbgeuTVzKixEUqF0dguVMX9K3uz8UaaQdXK1TMcqVDbwx1xGVmcufmaE5UE5xhQ0C3Pz
         rRLA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWc4vhsiegFsQoh4sxxYIU45U06l8ts8RdalJ2ZxFHPAT4qSXOW
	0RvyGcgCvU8IG3ZnEEDAXCk=
X-Google-Smtp-Source: APXvYqzZl8hxhSU4YDpI0KRRG4BMXSefd5YM51h8h4AvmKJ1JWeogROOYx3yLPpuRPJ5J6t/BpRMfA==
X-Received: by 2002:ac8:21b5:: with SMTP id 50mr3966836qty.10.1579101409107;
        Wed, 15 Jan 2020 07:16:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e506:: with SMTP id w6ls4254525qkf.12.gmail; Wed, 15 Jan
 2020 07:16:48 -0800 (PST)
X-Received: by 2002:a37:b53:: with SMTP id 80mr28616361qkl.65.1579101408624;
        Wed, 15 Jan 2020 07:16:48 -0800 (PST)
Date: Wed, 15 Jan 2020 07:16:48 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com>
Subject: iSCSI Multiqueue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2987_1811754801.1579101408110"
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

------=_Part_2987_1811754801.1579101408110
Content-Type: multipart/alternative; 
	boundary="----=_Part_2988_1192783085.1579101408110"

------=_Part_2988_1192783085.1579101408110
Content-Type: text/plain; charset="UTF-8"


Hi all,

I have a question regarding multi-queue in iSCSI. AFAIK, *scsi-mq* has been 
functional in kernel since kernel 3.17. Because earlier,
the block layer was updated to multi-queue *blk-mq* from single-queue. So 
the current kernel has full-fledged *multi-queues*.

The question is:

How an iSCSI initiator uses multi-queue? Does it mean having multiple 
connections? I would like 
to see where exactly that is achieved in the code, if someone can please me 
give me a hint. Thanks in advance :)

Regards

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1%40googlegroups.com.

------=_Part_2988_1192783085.1579101408110
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><div>Hi all,</div><div><br></div><div>I have a qu=
estion regarding multi-queue in iSCSI. AFAIK, <b>scsi-mq</b> has been funct=
ional in kernel since kernel 3.17. Because earlier,</div><div>the block lay=
er was updated to multi-queue <b>blk-mq</b>=C2=A0from single-queue. So the =
current kernel has full-fledged <b>multi-queues</b>.</div><div><br></div><d=
iv>The question is:</div><div><br></div><div>How an iSCSI initiator uses mu=
lti-queue? Does it mean having multiple connections? I would like=C2=A0</di=
v></div><div>to see where exactly that is achieved in the code, if someone =
can please me give me a hint. Thanks in advance :)</div><div><br></div><div=
>Regards<br><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1%40googlegroups.com</a>.<b=
r />

------=_Part_2988_1192783085.1579101408110--

------=_Part_2987_1811754801.1579101408110--
