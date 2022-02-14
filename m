Return-Path: <open-iscsi+bncBC755V5RXMKBBKVRVKIAMGQEHXEYEHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 734A24B593F
	for <lists+open-iscsi@lfdr.de>; Mon, 14 Feb 2022 19:00:13 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id z205-20020a3765d6000000b0047db3b020dfsf9589333qkb.22
        for <lists+open-iscsi@lfdr.de>; Mon, 14 Feb 2022 10:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ws1HsIayCgQrYhjQkJKUtjvxcnU/Bd9C5bDjcxQrBJU=;
        b=ddvbWXgNlPHnz27Wl4vSOUEAfE+mfDHghvvWs4xpLUilN7OvxHJlJNwHaRmBR1P7Bn
         kNGnxM4ImdCA6AJ6Wjb7CNKZId4alsCWNjtTCRpNuRsY6iHpVPK6KkEsZ/HIQb+/yAPo
         Vj+Oqqg00+OicGbBKWuErXRp/cdqO4pa3aOrgfT/p5Ptrnnjl0ne+XLvOn14R0iJFb5E
         2ysQRu4JPqBEvjCOqpaKqwEkcQFF5gYUXYM7qjh45pRl1q1ihoKPhFV2OJ/uApAzVmLt
         oPNeQ/FhhFydCDYY3LnGQvjrdDyIrbARO6n6OhSwe3ccIMePwplcYuw7/u+QFs9m1xVm
         r1GQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ws1HsIayCgQrYhjQkJKUtjvxcnU/Bd9C5bDjcxQrBJU=;
        b=nmEcUBwPAwD3Iu71y8xQ6S0QeUow3GB2zAzn88mC2wF2xH3hLY5JLAi3icRHL4KjO1
         8l8enAHIYlWDXjPZ7S5mJ+Em+UazPKLJz6rDkiK/0lJJ7m0zXF/GNUXAHJgoDFliH/Ng
         Uz+7VrBFrEtCFz+NjTkhTQP3j7ouSCTTv1FuzOQsHeqiTcCAeYbLMyDFPT2fImLEAgFz
         WS9DRqDDw4FxckhIf+953iVvQW/e7OIIh7ztL2x/LhP0xa/OYSB2YxYfNEq5qIgGq2fg
         kM/hzcKKrXm1bMrsMZgyNF/MdapSfrW7CJw8gOZnn1hELQplFxfG9UgwOOfsB7+iNux6
         LWBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ws1HsIayCgQrYhjQkJKUtjvxcnU/Bd9C5bDjcxQrBJU=;
        b=MvTFUQ5AJ1bd2PkXlTOCY21cV45eCW+FE0hc+/Vtzh/V9M4IHmdpkX1Q3pQRS86zRB
         5KQfnHHerCT6J3k4ClblsDGiOINTyM2HLFkaTBnw16RvLjxIJHtRxX/Eb+6S3hRHS6Ec
         0m/TnXTY0KQvzh4MJJ/NV+KUK0aun1iVd4WFXouXbypFaZQA2jZmabgZ+rR6hKWLAu5G
         IiCvbBNzGCTgYMlj8ucZwb/eRIA0ymmHOpNdXG0S6fFroBs7Hd3mhtnntUPPXN7QMyqG
         jowX+TpylHYTIitoLnDNQQJKsvbuJehCZDFo8nlg535r14Dgwfabf6nAT4awuTBMcYnW
         IxZw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530qDoCBLXaqLyJAqzUjK4W9KLOG1/FP4/vrnieefvklmpeSsyC4
	eD04WpG8e+FK/zHFN+PGW+E=
X-Google-Smtp-Source: ABdhPJzYXSX65UsJa8TUjWbCggISXIc3cHb7YVpRwL6rt9ubX0TxXllF1rkqwo4RWl3q1TQ85o3M+g==
X-Received: by 2002:a05:622a:1911:: with SMTP id w17mr85187qtc.312.1644861612098;
        Mon, 14 Feb 2022 10:00:12 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:4aee:: with SMTP id cp14ls197152qvb.8.gmail; Mon, 14 Feb
 2022 10:00:06 -0800 (PST)
X-Received: by 2002:a05:6214:2489:: with SMTP id gi9mr166829qvb.78.1644861606722;
        Mon, 14 Feb 2022 10:00:06 -0800 (PST)
Date: Mon, 14 Feb 2022 10:00:06 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <474b9ddc-8643-49e1-96da-da5de38e6d55n@googlegroups.com>
Subject: Version 2.1.6 Available now.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2054_116936159.1644861606170"
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

------=_Part_2054_116936159.1644861606170
Content-Type: multipart/alternative; 
	boundary="----=_Part_2055_633810000.1644861606170"

------=_Part_2055_633810000.1644861606170
Content-Type: text/plain; charset="UTF-8"


I just tagged version 2.1.6 of open-iscsi. Enjoy. :) 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/474b9ddc-8643-49e1-96da-da5de38e6d55n%40googlegroups.com.

------=_Part_2055_633810000.1644861606170
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br>I just tagged version 2.1.6 of open-iscsi. Enjoy. :) <br>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/474b9ddc-8643-49e1-96da-da5de38e6d55n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/474b9ddc-8643-49e1-96da-da5de38e6d55n%40googlegroups.com</a>.=
<br />

------=_Part_2055_633810000.1644861606170--

------=_Part_2054_116936159.1644861606170--
