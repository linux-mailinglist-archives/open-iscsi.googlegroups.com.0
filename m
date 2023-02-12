Return-Path: <open-iscsi+bncBC755V5RXMKBB7XNUSPQMGQEBHBHBOA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEF9693975
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Feb 2023 19:59:13 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id u6-20020a6be406000000b00716ceebf132sf7226044iog.1
        for <lists+open-iscsi@lfdr.de>; Sun, 12 Feb 2023 10:59:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1676228352; cv=pass;
        d=google.com; s=arc-20160816;
        b=sRArY8ZrQzjVet3MUp09u/rozn45+4tX2tkBWRA3Pg7KQQ9titJR8abNaTnXb//IHL
         g15umrC9S3Pbrr0xYsVrOYog+F31Gb0Qq2Hm4RmNyuvHPi1mwVQRcJq4EhCh7qNii9pP
         LK8F2bpBRxmO0bNm2f3QZA8j/kknbIFci/YpVkt01sAAS0XlH/U//1x+/VbjVZ96l6k9
         2tZVJrkTNYpYCekWLuFOpM3+w7+uHxCCUrAJ/cGfHXENgIww36DIrdPJ8WzTRVPvqqT/
         ixGgAs2KkC8RH1Hu+SEKzOar/HX42wTHpl9OFtyZIpZ6jHGmWrAsIDYy4GQfhqW0BqAF
         CdDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=J1mpVTCJ1/gN+e82vPVOSudHnnl3lNMsYn8gy4jFrfQ=;
        b=vIQB6YYKVlpJj2Tvd+nQTGK9CgxoBGJ367EgvOzujSlqnBruAbdaxhh9CjOep1ivtQ
         zZC+U/b9MWSHYTM/4uchlex9HcdQ/FRA45RRGxZUl/0NNlJIyOkdMJjOl8Gs/xKsJ+Vn
         p3Lm3IrxwD2ChzY/WFWGhBTOB43qokqt4h9vKPU2oz6gmsrWi6dv/tSwk7PY5eTXOr1H
         etDrHqPvsWHlkoBnMGu4XLq53x4jE4ZmZWzolM9Cih48aHxvA5EKs+3NbRvX1o1l8yqu
         UGTaOmnrxXXBthem+V3Q0kZu1wJoWGq8RKUFjiCAEk7LJYgnhUURWq9bQAcwezAah9yf
         WGNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AckGqtCM;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id
         :in-reply-to:to:references:date:subject:mime-version:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J1mpVTCJ1/gN+e82vPVOSudHnnl3lNMsYn8gy4jFrfQ=;
        b=msS7rnlOSWtm87YXLiNYLe2O8hXQNBZnAxa0rOQigAEQ5vfl+82jk5qIa7V9ZIrbjE
         JbNrqHg8RUkZeEoT3tsoIPASQmGveAgP696dyei2h2vMuvRYqIC4rqjvML4Hr1uNq5Q/
         kMxTo4yUvz9pMb/bBE5QroLmkrffpfPO3WhjjuPxrmDTNKiz4rz7Li8mXjd/qpXfBmlC
         9zNUq018VKBeAb0G5tLXn8dZ3bQqFBB9WIIvF4YsN2XJUmZXSqYpF3he43JLNEnlOmbc
         R408wYXjLuaEAd1Ey8Z3N1kX1zFTcq3fljvsVijYpYe4Jr9jgT51tr4sEyL6ThCmu8RH
         mNrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id
         :in-reply-to:to:references:date:subject:mime-version:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1mpVTCJ1/gN+e82vPVOSudHnnl3lNMsYn8gy4jFrfQ=;
        b=YL82HijVp9IKy8JKFBq3Ww1ouBLJznSQ+8ynr74qw4XT52CSgOS5HPsc511SL5Naz2
         g3Y1NjHRJkC9B6CeoiPSI9lIO9PNQfVMOIyREtisz7m7wY4GRbljydEBzvYSbjcLJ4hA
         K6OlXi3izRZM8r/x1sOz8hqppsk6a2p1LZ/vXGlqJuP53IR5HyfGhPKPl9GgN+wxNTxE
         APg4nsGbe/28a28fwjzIDWZJAooDtgG89tzfkXdrYCRDrfeKQLFxUoCB9dC+1TVfGloN
         OoQuz3k26VQVUEWjLHiB8eNjKQ9CJxRn6RtzdN+w9+M7iZuI/W897MxWi/oqndolSEZe
         HkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id
         :in-reply-to:to:references:date:subject:mime-version:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J1mpVTCJ1/gN+e82vPVOSudHnnl3lNMsYn8gy4jFrfQ=;
        b=4s+/D0HE7DAqSQFwFb04lEjEBnsQd356nEZyaIDnt5uqBaT5LeQ7EcozH0EIrxPQYo
         OQS3nn1ielQuG4KCxZCtOdUWVfeF7lpO6jVcH7t2TPWmUFTGOiT9UWI22QQg6SxSCuSb
         A2CyB+Blxu2TnIeS0i9uFwc7CEHWQssI0ZSZ4ImF+EFJ6rN+y28gAIbPFz4rw0tIEfOI
         Ldto7fRAmf6ZkOXql03lFlhlDj4msSPN5J3kS0v0+bJY84DWrcXx2sFdArzqAGQFByT7
         JSP3Sw2zJWFaYNpYHb+vPtRAdoAP70SW+UoNp7Gt/krBtPXnWPBuzOIcVIzhpmgNMjwr
         /PRg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUB0TX52BoYBB4I87qEl46lz9cpGHllMo5G23jOqQG1OIVCGktT
	r/1x8Hgna8637y48+vg9jyk=
X-Google-Smtp-Source: AK7set+wNRq0ale8D5k6N+miWyym8Etcz2mIm66ebGR1p3mxY/BTlvN7Nf88uTb6uw9iC2qF7GJM7Q==
X-Received: by 2002:a02:ce8d:0:b0:3bd:e9ae:def0 with SMTP id y13-20020a02ce8d000000b003bde9aedef0mr13187166jaq.68.1676228351961;
        Sun, 12 Feb 2023 10:59:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:ca4:b0:315:326d:f382 with SMTP id
 4-20020a056e020ca400b00315326df382ls1320704ilg.11.-pod-prod-gmail; Sun, 12
 Feb 2023 10:59:10 -0800 (PST)
X-Received: by 2002:a05:6e02:1bcc:b0:315:45c5:917d with SMTP id x12-20020a056e021bcc00b0031545c5917dmr921090ilv.15.1676228350372;
        Sun, 12 Feb 2023 10:59:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1676228350; cv=none;
        d=google.com; s=arc-20160816;
        b=o+VIcj4hMWJlBMqW56sAOw3UYrRmjmlTuuWkrZYVy17fs/yAhkENxqB0/wj0VdnI5Z
         HAInzvOKgluunxqKqDdpZqhXVvSjvNx+4BNU8qNCM14LZtsGWgpUmngyybkyHc4kFSV4
         DNb92FlzthjvqT3qpriP6HlRv3SMkp5MCZ213VxMGcFqkE7ap9xIoUY/yGRSjVCjwwpo
         Z/AIa3r5c0I8et2E5dKMoqosQPbVXsv/i6NBEu4NN/vdvDFbRbdMBSA3Bj9CtXedpRu9
         q4qZiEnAFNi08IBW2TyMEAHdqaDwCWdH7IqjPPYH9vTgAsKy/yFkSECdFu0Z5ZTGVg/k
         Cv+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=RxdGZ/9BCriSjSodEwkLHguULkUQXNAr9xvzJRpnqD0=;
        b=jsNaVeTlF3SFn43Mu6NtZ+HBMPfTyuClSOlVMJZ0eU6zaTIrx4KFZEN8aKn7b8uYPy
         VTMSoMjxlKi+ORotm3/meelu29knY6inBBlp18jRgP9Ec/0Hk43dffyarkMVZpHAtTpI
         AyGBdvrLaeSQNanG2pOqfZrydiZZ384TCvra5bjjfxelfEvTZDYp6ix3+fk3jzEdqkly
         RuHK6zDnLbAOs06/aaxXaNIjDvyIwtm7XE7NaleRt9vkkP6LEb09xf0h26RDpb233Ijw
         G4w3IexWoQZGzS4CYf2qo8zL7aIgZ09lPa3tZHzup6jA0sDB49Ai+BJaCEOGcrRIpKLw
         lsDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AckGqtCM;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id c4-20020a056e020cc400b0031538deaabbsi192547ilj.5.2023.02.12.10.59.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 10:59:10 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id on9-20020a17090b1d0900b002300a96b358so10234356pjb.1
        for <open-iscsi@googlegroups.com>; Sun, 12 Feb 2023 10:59:10 -0800 (PST)
X-Received: by 2002:a17:90b:2247:b0:234:156:dda7 with SMTP id hk7-20020a17090b224700b002340156dda7mr387522pjb.28.1676228349355;
        Sun, 12 Feb 2023 10:59:09 -0800 (PST)
Received: from smtpclient.apple ([2601:1c0:4d7f:138e::3])
        by smtp.gmail.com with ESMTPSA id cl14-20020a17090af68e00b00230ab56a1f3sm2285279pjb.51.2023.02.12.10.59.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Feb 2023 10:59:08 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B272DD26-C9F1-4610-8A80-3E8F4D5729F1"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
Subject: Re: Digest for open-iscsi@googlegroups.com - 1 update in 1 topic
Date: Sun, 12 Feb 2023 10:58:57 -0800
References: <00000000000054a69d05f467c41a@google.com>
To: open-iscsi@googlegroups.com
In-Reply-To: <00000000000054a69d05f467c41a@google.com>
Message-Id: <4EEF6C4C-D7C8-4C31-B391-353DD7150C4C@gmail.com>
X-Mailer: Apple Mail (2.3731.300.101.1.3)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=AckGqtCM;       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail=_B272DD26-C9F1-4610-8A80-3E8F4D5729F1
Content-Type: text/plain; charset="UTF-8"

This links to a proprietary iSCSI test suite. Not sure I approve of advertising here.

> On Feb 10, 2023, at 11:43 PM, open-iscsi@googlegroups.com wrote:
> 
> https://calsoftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-iscsi-initiator-target.html

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4EEF6C4C-D7C8-4C31-B391-353DD7150C4C%40gmail.com.

--Apple-Mail=_B272DD26-C9F1-4610-8A80-3E8F4D5729F1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dus-ascii"></head><body style=3D"overflow-wrap: break-word; -webkit-nbsp-=
mode: space; line-break: after-white-space;">This links to a proprietary iS=
CSI test suite. Not sure I approve of advertising here.<br><div><br><blockq=
uote type=3D"cite"><div>On Feb 10, 2023, at 11:43 PM, open-iscsi@googlegrou=
ps.com wrote:</div><br class=3D"Apple-interchange-newline"><div><a href=3D"=
https://calsoftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-isc=
si-initiator-target.html" style=3D"font-family: arial; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: auto; text-align: start; text-indent: 0px; text-transform: none; white-s=
pace: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: au=
to; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">=
https://calsoftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-isc=
si-initiator-target.html</a></div></blockquote></div><br></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4EEF6C4C-D7C8-4C31-B391-353DD7150C4C%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/4EEF6C4C-D7C8-4C31-B391-353DD7150C4C%40gmail.com</a>.<br />

--Apple-Mail=_B272DD26-C9F1-4610-8A80-3E8F4D5729F1--
