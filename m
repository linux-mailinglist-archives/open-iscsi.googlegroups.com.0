Return-Path: <open-iscsi+bncBC755V5RXMKBBV45WCLQMGQEHVVNTWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7364158A06E
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Aug 2022 20:24:25 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id q1-20020a056214018100b0047464a85fc4sf150270qvr.7
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Aug 2022 11:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc;
        bh=OHoXBT7AU2utObml6elO8DweemJMFDQLr06Cm1WqoAU=;
        b=RSrVOCdZABgwCP/Q27FjWnY0OTA1NQfEBkilHC0aHNyuv+mT+iL0Hk9WU2H1YiZz/w
         rKn+CzhGUDwzrIcj3mdnxa8JxDFwEE3FJqtYaUqpmJn4Cg5AZCYejqi+pxlwnt4wYXr5
         SiHBxSErxzWSzIE0ckj9w4QdSFZZ4TtnRa/br9WbVmPsoTCgSOIOWZb666uLlOr3nMXg
         dbfA3E2uJ+aff82HOLvzsJAILOcDZe8PqQ/ncUN5ODJTQ2cJrdUV4fe+SD6jiprcG2Kd
         RciQvWZrVGgycynh6aA7iy1iIl1oEuNSOE0pzaGmF9FdWzDQBMMCpN8tOWmkAP7n7HMG
         3yPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc;
        bh=OHoXBT7AU2utObml6elO8DweemJMFDQLr06Cm1WqoAU=;
        b=BgajDn5JECTPd6Igus8n5pamlCI1F2X9T1cArbTmw8ejYdB8VZhc84+R9kilVjanL9
         ifKMy+0hhwRn2Z7eO7W+k4KyR7VK7kR5RbeYPsySv9IULs4li/H0xovyWhIAufleAajP
         c8FBxw/eh2fx+c7601LLgQ08eU+8Z22yrOgZch2orkI6qBx90SUygDNssZY7nm5gea53
         ekvD3cQR75Lx0mhKTrScuiuRNYVHkVqEZmaLM5gGjRenIUnZGWQyDxW7amyOo0mi+c2Y
         dDBmFyeSCZxxhuJ5ZxCzRUwPBEct7Z87+YKQD52TJyYEsLjlFqmWT5zX8r20s8rTxAWx
         eGjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=OHoXBT7AU2utObml6elO8DweemJMFDQLr06Cm1WqoAU=;
        b=aiDQ6yglJeOrfhkNTZVFzhjvuLenOd1GpMSIhI1mxPA/8DDVY2D9zTToY4cm5jPbp/
         Mk7QGEYMtP1s/vqhJgAAXExbAsxYiLRPtmgHTsrfvucZ9CK0lAVNInVbYbPzIrJ3HO81
         a4J6djpP9mOGFMt2y4ZIWfP7bYgDB6NMGSp2fHrePJvhEmgDPOEQXcMh98kHNqFN+9QR
         RuzewdcWcmmvXGyPnGdGuAjGKT4GnwnuHrp8rlIfnNmNrD4DzbyfO3ywvGMXnCZ0c8i8
         RZrGzralwRF5RkADdXJL+XXDDBXDJvYsewfn/678BNwrQ6KzDhWWajHdw8WbIEWaokU8
         iScw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo39eNdqgHtgNP/kREHLXEGbxd0MTjdEIwcimYwDa7N6zVfm+wyc
	XKWPL2IXZgE6jZg+EYUc3UY=
X-Google-Smtp-Source: AA6agR5raFQsFjkTs4KPoSmG4xhZ5MrOuAXXC/+uyiYeFhqKtzlzEjtNfG+noY5Z0q4/yHFI3dd97w==
X-Received: by 2002:a05:622a:170e:b0:31f:83c:e142 with SMTP id h14-20020a05622a170e00b0031f083ce142mr2708303qtk.593.1659637464163;
        Thu, 04 Aug 2022 11:24:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:e144:0:b0:474:1b15:aa43 with SMTP id c4-20020a0ce144000000b004741b15aa43ls1345605qvl.10.-pod-prod-gmail;
 Thu, 04 Aug 2022 11:24:22 -0700 (PDT)
X-Received: by 2002:ad4:5ba1:0:b0:46e:2f1f:9836 with SMTP id 1-20020ad45ba1000000b0046e2f1f9836mr2499242qvq.87.1659637462781;
        Thu, 04 Aug 2022 11:24:22 -0700 (PDT)
Date: Thu, 4 Aug 2022 11:24:22 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4d1f831b-2408-41d3-b448-360d4053e3f6n@googlegroups.com>
Subject: Should we use autotools (or something like it) for build system?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_190_1466693243.1659637462336"
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

------=_Part_190_1466693243.1659637462336
Content-Type: multipart/alternative; 
	boundary="----=_Part_191_572473622.1659637462336"

------=_Part_191_572473622.1659637462336
Content-Type: text/plain; charset="UTF-8"


Hi!

I'm considering updating the build system to use autoconf/automake, or 
maybe something newer like meson?

See the discussion at: https://github.com/open-iscsi/open-iscsi/issues/359

-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4d1f831b-2408-41d3-b448-360d4053e3f6n%40googlegroups.com.

------=_Part_191_572473622.1659637462336
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><div>Hi!</div><div><br></div><div>I'm considering updating the build sy=
stem to use autoconf/automake, or maybe something newer like meson?</div><d=
iv><br></div><div>See the discussion at: https://github.com/open-iscsi/open=
-iscsi/issues/359</div><div><br></div><div>-- <br></div><div>Lee Duncan<br>=
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4d1f831b-2408-41d3-b448-360d4053e3f6n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/4d1f831b-2408-41d3-b448-360d4053e3f6n%40googlegroups.com</a>.=
<br />

------=_Part_191_572473622.1659637462336--

------=_Part_190_1466693243.1659637462336--
