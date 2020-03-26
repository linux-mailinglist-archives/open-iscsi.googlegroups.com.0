Return-Path: <open-iscsi+bncBC755V5RXMKBBK7X6LZQKGQEHQFLZFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF54194140
	for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 15:26:52 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id v88sf4896400qvv.6
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 07:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/bEJHyuBZNfUikXiLoPlN5bQyeEtXvgWVac4QA8kVJA=;
        b=Yy8N9N49pgfvJae0hqkrSfzKY8jLlKMMmADTYp3sO7Hh0RququpvsLZcAOtq9S053I
         bq5MRHtpGQ2SecoiFhWgxo/qhrxhUii/BHp/vzEmVXXhy6O96XazU4XvcLQwgMBg9U1o
         hpHeWOWI0Ju7P0hvQYoO2jxM/eQpiTLI43ys0X8ccAkX07z8M9iSMCOcHQtxwUDFwt9E
         LvWyoO7OQyrphetFLmrRvrBPkZoPa15kkZ1gmKLLXgGQdPh0ckOghZ0F+Vp9sSAWIBqI
         DqwxKsv7BJo721tuIX6yE5Lf1jVow8WQwccGzaxIThGQbHUfZE3EcZH9M2iWJLfZ5oqm
         e7Ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/bEJHyuBZNfUikXiLoPlN5bQyeEtXvgWVac4QA8kVJA=;
        b=DcfVAQ9gFxWt4mL/BIqDM6SUnWRz4VAlo/IAS50zTFOTTxM8QTFAv/66G095qdW9TD
         t+g9XZRXzdeTWphNGrSj8HwsfvoTx8LG52JgVik1vMHBSoZTXkhKyGVPG3VZ+fCFMOQm
         aceC7QNpiwRh5vd5wePWEI4DRAQK8p2Kb0bLkiH21hG5eKWbJj0cOFUmJButXvIrBe8K
         M1vLlCv1QHo4oCHHj36z2hdTlxFHjOPCEGs1SVPJgrvn3DmqVmmmERCF1kj0wIN6H7zr
         M01p6WjmzKR3FnfDRDxJqhzWMgJ11xa5pNHkQd13Qrr8DmZL3FWa3Ookm42bXXUkFeUo
         dS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/bEJHyuBZNfUikXiLoPlN5bQyeEtXvgWVac4QA8kVJA=;
        b=XZNEay3WEx1z80hqvx3x5aZzC/Jjr56gLvcSMznAR3FyoMsMV880l/hHkBEm+Lg6mK
         Z/ikbqLHdmsr3q5n79axyoxg970SNGzHAdDHSuTduoH/1CRXWO0LirxxzkFLYX/FtBpD
         j9TWP/+6ej7YyWLxmbdccIlNDE1WzYEXtfgsuyn3UKJv5+60zpBlBwIczUIQ05dEVa/S
         H70OZtRvGSbBZY9M0bhQy0Uhr62to04BV3k3vhuWs/RoG3u5O77LT7cfYN9ueK/jjwyv
         bFPUc63LhyyXP8zAVCfxGUF0cNV/jyYy9jN+p+pvV+l/lyXMFdqLTXl/5Vdv9hDuzgob
         mHMg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ3BEOFyqjHlAq4rlK8PauTZn/++7u+ha2c7/ccTdtCc5dn4UC1H
	m0PWJWinOkPXkUNxqQB6gtU=
X-Google-Smtp-Source: ADFU+vs/3Mqv7R8ql4JcJMkSGTW0IS/IvLj5ey96uOJShWfbuO/vs+uwAXkToDU+C7Z4hippss6FXg==
X-Received: by 2002:a0c:bd99:: with SMTP id n25mr8429672qvg.149.1585232811731;
        Thu, 26 Mar 2020 07:26:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls2600280qkf.9.gmail; Thu, 26
 Mar 2020 07:26:51 -0700 (PDT)
X-Received: by 2002:ae9:ed56:: with SMTP id c83mr7809222qkg.200.1585232811036;
        Thu, 26 Mar 2020 07:26:51 -0700 (PDT)
Date: Thu, 26 Mar 2020 07:26:50 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <503795d3-3b41-48ef-9945-4de6ff83e605@googlegroups.com>
In-Reply-To: <a0d41d75-c6d2-4f7e-90d2-755cde7d08ea@googlegroups.com>
References: <a0d41d75-c6d2-4f7e-90d2-755cde7d08ea@googlegroups.com>
Subject: Re: There are two same sessions on the on client node? what's
 happen with it?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3818_214941420.1585232810121"
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

------=_Part_3818_214941420.1585232810121
Content-Type: multipart/alternative; 
	boundary="----=_Part_3819_1815205808.1585232810121"

------=_Part_3819_1815205808.1585232810121
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Those are two different sessions, as distinguished by their session numbers=
.

On Thursday, March 5, 2020 at 7:42:46 PM UTC-8, can zhu wrote:
>
> [image: =E5=BE=AE=E4=BF=A1=E5=9B=BE=E7=89=87_20200306114227.png]
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/503795d3-3b41-48ef-9945-4de6ff83e605%40googlegroups.com.

------=_Part_3819_1815205808.1585232810121
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Those are two different sessions, as distinguished by thei=
r session numbers.<br><br>On Thursday, March 5, 2020 at 7:42:46 PM UTC-8, c=
an zhu wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><p style=3D"text-=
align:center;clear:both"><img src=3D"https://groups.google.com/group/open-i=
scsi/attach/1428b7dda8342/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_202003061142=
27.png?part=3D0.1&amp;view=3D1&amp;authuser=3D0" alt=3D"=E5=BE=AE=E4=BF=A1=
=E5=9B=BE=E7=89=87_20200306114227.png" style=3D"margin-left:1em;margin-righ=
t:1em" width=3D"320" height=3D"75"></p><br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/503795d3-3b41-48ef-9945-4de6ff83e605%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/503795d3-3b41-48ef-9945-4de6ff83e605%40googlegroups.com</a>.<b=
r />

------=_Part_3819_1815205808.1585232810121--

------=_Part_3818_214941420.1585232810121--
