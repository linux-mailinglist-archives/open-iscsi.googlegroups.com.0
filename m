Return-Path: <open-iscsi+bncBC755V5RXMKBBAOP537AKGQECSHYMQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D69BA2DD89D
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Dec 2020 19:46:26 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id h4sf14454418oie.9
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Dec 2020 10:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KXFEVo2c5SMN8GAImJhXMb3lwCgzWKUNHxie77X49tw=;
        b=GYMoxrSV6hcnz4RM0BLW+ALkp60zEPFWEYvb3+6JjT0wax65cFLQg877H2B1ZYOvxb
         uDEP/BLKvTM+maN4fX+VI7rO9phP70vKQsLQVbp9ZisOKfc88JPa6veKG5OU4/Ovih+d
         BKkdpFEFzpxWgTliZz1lo91zDEEo2v0R1TRF+j67l81yht6ij8HEf3YXFp6le+LnSU32
         pqL96lRrTnUxQIF1NChJ9I/+lrPPmiZYerCif4w4StPVdPv0mHoE6ar+blPRlyYRjdUJ
         VrDu11aqM2/jc/lgTqJSr0Pl9VgH6JfqHuaHnc6j4TgteIx4S0mIj9f0YjKBIEjiFp2Q
         1fCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KXFEVo2c5SMN8GAImJhXMb3lwCgzWKUNHxie77X49tw=;
        b=WTFdVLDSAFRmkE2TiD5xS9MDJOGZ+xu4ePaHkUjG5mMJJDhactmI2J33msPjGVodi2
         n/p93iXDR9VS68aGz7AiVvCgqKzSwYDrzJL9Xdm+GzBGY0mkWyDqMo+IJbn9IcytakW6
         4FnfA6dysIt3yhyMeCNisi3rg5Lgw93PWI0d39IdwEoBZpl66MvvEv0ivQBAL4K2j/Jz
         3Ej71xTVhszmyIe+ZBKnGYQzI1d5kujFMLkkORvT29wuMIMYuIKhajChjaWcP+0qKSpt
         uFNFKy32PuFLx9/NfAs3OR4jb0nN10weEiK586t4YIRmIhVCHRU9xU4QdF9UsNJwLySd
         qc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KXFEVo2c5SMN8GAImJhXMb3lwCgzWKUNHxie77X49tw=;
        b=pDrweWnJQLtECt+s4vV8PCE3DYIV8y9k7FMzwAUxLjSKyTpmDoG2yEoYNgr4stdt+4
         jlnifC1bF6VNjAy+fe0GvJEaHw7utEanvnH9fX+UGJYwF40WovgH/+80P5oaft+KSmsR
         5xrgxVq47N/GsNNURIgaCJaXfhkrJ9/4ZkGOl7tOAzw8UJj1azalxTIzxhTIXyMDr6N7
         o2TOlbaUiTzacjHJEnsYuZi+s+RjY1dOL7Gcsq4Q/MZheR6y1UETgA6p1oEzIJ7jJdqu
         KwDGjcMp0GscBT73L4vDo6B81cBkrdhs1V6vIYJJnyh6TU/frVBv/1Bi8KFBWKr04D/D
         LgQA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531GkhN1OJzxRAi4wOKzdambcV++BRMNpxqru5wqWgK8tpx+NLfg
	YfmkrnSGwhj8/VBVXcy5Ggs=
X-Google-Smtp-Source: ABdhPJyToZbP9gY2v0Gmxgn/WTUzmN6pjYwvW68UKO8/c6IGUfFaptR5+gzECCcWfJP2JFvsOrHuqw==
X-Received: by 2002:aca:2b0c:: with SMTP id i12mr391643oik.76.1608230785582;
        Thu, 17 Dec 2020 10:46:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:7ce:: with SMTP id f14ls3726742oij.5.gmail; Thu, 17
 Dec 2020 10:46:25 -0800 (PST)
X-Received: by 2002:aca:fcd7:: with SMTP id a206mr382533oii.134.1608230785060;
        Thu, 17 Dec 2020 10:46:25 -0800 (PST)
Date: Thu, 17 Dec 2020 10:46:24 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0821d935-d1d7-4483-b5af-aad16d2f85c7n@googlegroups.com>
In-Reply-To: <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com>
References: <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com>
Subject: Re: Hi help me please
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6737_566936655.1608230784270"
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

------=_Part_6737_566936655.1608230784270
Content-Type: multipart/alternative; 
	boundary="----=_Part_6738_937533433.1608230784270"

------=_Part_6738_937533433.1608230784270
Content-Type: text/plain; charset="UTF-8"

As Ulrich replied, there's not much we can do with the data you provided.

On Wednesday, December 16, 2020 at 12:29:20 PM UTC-8 go xayyasang wrote:

> [root@target ~]# iscsiadm -m node -o show
> iscsiadm: No records found
>
>
That's normal if you have no records in your database. If you want records 
in your database, you have to perform discovery.

Please browse the README file that comes with open-iscsi. We don't have a 
general open-iscsi HowTo tutorial, but search the internet (as I just did), 
and you'll find several.

Next time, supply: OS and version used, open-iscsi version number, what you 
are trying to do, and all steps leading up to your error, so that we can 
reproduce your error if needed.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%40googlegroups.com.

------=_Part_6738_937533433.1608230784270
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>As Ulrich replied, there's not much we can do with the data you provid=
ed.</div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_at=
tr">On Wednesday, December 16, 2020 at 12:29:20 PM UTC-8 go xayyasang wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; =
border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>[root@t=
arget ~]# iscsiadm -m node -o show</div><div>iscsiadm: No records found</di=
v><div><br></div></blockquote><div><br></div><div>That's normal if you have=
 no records in your database. If you want records in your database, you hav=
e to perform discovery.</div><div><br></div><div>Please browse the README f=
ile that comes with open-iscsi. We don't have a general open-iscsi HowTo tu=
torial, but search the internet (as I just did), and you'll find several.</=
div><div><br></div><div>Next time, supply: OS and version used, open-iscsi =
version number, what you are trying to do, and all steps leading up to your=
 error, so that we can reproduce your error if needed.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%40googlegroups.com</a>.=
<br />

------=_Part_6738_937533433.1608230784270--

------=_Part_6737_566936655.1608230784270--
