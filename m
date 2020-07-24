Return-Path: <open-iscsi+bncBC755V5RXMKBBXH55T4AKGQEVSUNTII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3F122CF01
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jul 2020 22:04:46 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id h17sf88397oib.18
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jul 2020 13:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=09P3waDvCBmN85C+hFu+ZFleG8LZvFyv6xXBJi9bd1M=;
        b=Xry3xN7kS3h66H3lUk2PafHJmxy4Xzv6PcF7ksXexRnG7EsLv8Ep0Y2BeWCLhmajFr
         jvmAPFEd0QYmwQCUtZCfuTAwY7ZpJ0qEuq2eanOiHSWny03ySfsHq2YBEZglbPvAk3ls
         7QllO2IMsjEs5JHZ93B71U8EIXoSr9hlR+pJUT2dS6XYX/A1Jz7eQV2dc+I5je2MzUfD
         s1P1j3IlOV+cGRVRVyGnRGwqv7RGCDahUW6XSQeSGEZ98cx+37vf8PsX3Cs2RHI37L/F
         EgFY5yJMO/wK/818b8Zel/ZNepxmPQbhZooL3VFN++pKC9Ru4d6dd5i0P20XBbqZ0fiW
         dpAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=09P3waDvCBmN85C+hFu+ZFleG8LZvFyv6xXBJi9bd1M=;
        b=JSpI/4PahK5ILcPA+UzIau5oPzPDn6ANCOwJUWAhFiDVZ01uKgQOusa4urA+0Pg5Uh
         wz34MiQB5xuGChWZiNacJu+cKFKZ1Cqw1DYUCYDBIXrxn53UX1/KWWPAT3MBYQKqgAFE
         OOJPLgVjiKTehUBshkdITZ3JrZWMSRW31rOJDd9p5AbA1XDeUUoRLSmfT2Q7WjcVoRUJ
         UyGjzJBMfPz0mMhKsrl1+i6BUjQeomPeh79ws+ks51Yj9s3lJou/Vysq0vH+3nhRQ2fE
         6QohfuNWIYPU+YimiZ1QC7QiqEsnXuVBt4fkR6Co9tD3iULdCe5KWDW2rNSCj2qJ9SZE
         RmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09P3waDvCBmN85C+hFu+ZFleG8LZvFyv6xXBJi9bd1M=;
        b=sMEifOHwYpwucm8JInYmzIjL6KW4o6hely0LIJP5glskwKI+G48o3sFIkIiqcSplsw
         BkcdH0UzFsBrTbXocLQmSoRzrG8v4HcLrTrFGbAsvpdVrfLYicPv/59lSpFZ/ZwNzII1
         wTmWYj64KMUgsILtGO6xehlP0KkPBAG6r61D7mPN+4D6slzsjjWL/uXu9e6/5JSaL2XQ
         W6v7wdasljwLMWnw7MkyN8KKG7l6f+f3286Gex1KraXdlss/J0dLScJmtPrgm+h9QJYn
         CEHLJgIUBKFWRe5EWVnUoYRV2NS30Flib6TL9r3IT4Ms25USTvU4FfetNlprBQA3ZLIy
         ZROA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53285jRLgm99oUdLe2KYryRp02HtwYnainGDfekhQjpAxYDyMHxJ
	FeC8MaW4o8m+oV+rUrRlRak=
X-Google-Smtp-Source: ABdhPJxDE49xUYuB/KFAXf/dsJgqceWuW61aBc7TcsSgGrTjR5jIQZ0cc+xrt6oxGW39qnCxAIB3LQ==
X-Received: by 2002:a9d:3e57:: with SMTP id h23mr10342768otg.44.1595621084722;
        Fri, 24 Jul 2020 13:04:44 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:4b14:: with SMTP id y20ls2020578oia.1.gmail; Fri, 24 Jul
 2020 13:04:44 -0700 (PDT)
X-Received: by 2002:a05:6808:9a3:: with SMTP id e3mr9736571oig.63.1595621084303;
        Fri, 24 Jul 2020 13:04:44 -0700 (PDT)
Date: Fri, 24 Jul 2020 13:04:43 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <75d8c579-b124-4e5e-936d-f7a98b608c97o@googlegroups.com>
Subject: About to tag a new version
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_507_820466699.1595621083679"
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

------=_Part_507_820466699.1595621083679
Content-Type: multipart/alternative; 
	boundary="----=_Part_508_614921112.1595621083679"

------=_Part_508_614921112.1595621083679
Content-Type: text/plain; charset="UTF-8"

Hi All:

I',m planning on tagging a new version of open-iscsi, which will be 2.1.2.

This would be a bug-fix and cleanup release.

Any comments/objections?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/75d8c579-b124-4e5e-936d-f7a98b608c97o%40googlegroups.com.

------=_Part_508_614921112.1595621083679
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All:</div><div><br></div><div>I&#39;,m planning on=
 tagging a new version of open-iscsi, which will be 2.1.2.</div><div><br></=
div><div>This would be a bug-fix and cleanup release.</div><div><br></div><=
div>Any comments/objections?<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/75d8c579-b124-4e5e-936d-f7a98b608c97o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/75d8c579-b124-4e5e-936d-f7a98b608c97o%40googlegroups.com</a>.=
<br />

------=_Part_508_614921112.1595621083679--

------=_Part_507_820466699.1595621083679--
