Return-Path: <open-iscsi+bncBC755V5RXMKBBV4B6KKQMGQE6QJG4LI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EC9560607
	for <lists+open-iscsi@lfdr.de>; Wed, 29 Jun 2022 18:42:01 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id mz4-20020a0562142d0400b004726d99aa49sf8550076qvb.10
        for <lists+open-iscsi@lfdr.de>; Wed, 29 Jun 2022 09:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ppeHRPOk64OglAWdbedS+3oqDL1tkIt46ZHYQ6Sut5Q=;
        b=A5H1V8p9P7z+XXmQoBx348RVRWHPBS0+VS/nrgKHnp0DdjY8pE0KojOxmxMXQhJqJR
         vlaZ6G7snxm0iKYV6mnsh4CdSarUvzELl3B2zR+tJeXn8ke834CEDG0ajv6zTP1QB1fd
         hvlyWxyuS5+7+JlACtTe8sSB5k3ydUGAJkKqJinJ7mwaMm/c32NWnr3Z5zBsfjAok0D+
         IXTvxBNXCraB9znDzv/Dd9N5SEax/qumdsN8h79jFBENLB/lo/co+4Q05xhJtx7Mnlia
         zQjF6cpImCxV2ci9XI+gXPCQU4c7i3guAw6Qevwjfp1w3Edmvit11NQrSJ7tAd1fxVPu
         1L8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ppeHRPOk64OglAWdbedS+3oqDL1tkIt46ZHYQ6Sut5Q=;
        b=kSA4/FQniO+mobWjN5VWLP3LsrVEXChSTgQva8UYqqY1NPJHRdf62tXt7+ayUf42IJ
         5Hduf00T589j6njFocgCYKVH2pnpPhmJIgUePTwA+D7XfqOWu7IICCSURowLbcwzf6jp
         5BkED3Sah8YTt5Xoh9pdgF5PPtRzSNJZA46Yzgore4UU1IGCDhOunq4foqJtsfISe7Dd
         Ej55l3Y8K2xkTGTHo41F6km7RK1aEDPIq5n7gfvZzLYWE3G4yv+g/uVMqi5+FgBMUbCK
         ISFv7BoK3qnF0Y1YuWmYjm7cfktWbtXyWn05g/7RgMDnmzYo0eYkWifMvtTuKCs2EVNP
         80jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ppeHRPOk64OglAWdbedS+3oqDL1tkIt46ZHYQ6Sut5Q=;
        b=4+UMG6ix87aYUUUygIQcOiyC+l2y9sDRSKj6knvy+N62yiEix9gPqzoaaeQgtRgr9V
         z+BQ5gr7POBXOSIqEDRDgbzegt5P9GvJ9e7Z5GWuzUHseTvJcJ6KE51uN0P+GXAdBW70
         D58W7lDp2UbRazFunbfrHLY51XgC/P1FG9Pr6BLRwhq8CsD4L/6Tniu9pxzUHnn5OYs8
         5/Mby7GLRwdYqgyfHbdlkGplKIjdGvGMCutMMTOgUw5nNllTjIVK7S8JgYBYtzAx9dBe
         223wbzFdI9s0n7PImblogAmpmoCIOjK8fmuvsV0ZEBmF+JMZfVJ+xQQSfyiNme8S1V41
         X1pQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora/em5LA0hdc5YFSlUqQuKG2b48ZwH7Mc1qRT67UOBxfLOF3XsAB
	VFYv1a7kmso1W2H7PiV2Z+E=
X-Google-Smtp-Source: AGRyM1smDDdoTOxoauUlI1UVsYInFd7hv0NKLoZXOqOHMoo7ekiz1ocskWWGmr3XD8toWqnRv4pimQ==
X-Received: by 2002:ae9:ee1a:0:b0:6ae:f30f:87b5 with SMTP id i26-20020ae9ee1a000000b006aef30f87b5mr2897799qkg.230.1656520920443;
        Wed, 29 Jun 2022 09:42:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1925:b0:6af:1d31:f488 with SMTP id
 bj37-20020a05620a192500b006af1d31f488ls5912652qkb.6.gmail; Wed, 29 Jun 2022
 09:41:58 -0700 (PDT)
X-Received: by 2002:ae9:dd03:0:b0:6a7:1c2a:bbea with SMTP id r3-20020ae9dd03000000b006a71c2abbeamr2670154qkf.769.1656520918802;
        Wed, 29 Jun 2022 09:41:58 -0700 (PDT)
Date: Wed, 29 Jun 2022 09:41:58 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <79431b97-c434-47c0-9e1c-2206fcad4a93n@googlegroups.com>
In-Reply-To: <35714a79-ebfe-4c78-966e-bc20add1aea0n@googlegroups.com>
References: <35714a79-ebfe-4c78-966e-bc20add1aea0n@googlegroups.com>
Subject: Re: iscsi device with multipath
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_244_647876883.1656520918016"
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

------=_Part_244_647876883.1656520918016
Content-Type: multipart/alternative; 
	boundary="----=_Part_245_1580309449.1656520918017"

------=_Part_245_1580309449.1656520918017
Content-Type: text/plain; charset="UTF-8"

I'm sorry I didn't see this earlier. I don't see any replies. I can't quite 
parse your question, though. What are you asking about?

On Thursday, June 16, 2022 at 11:57:20 PM UTC-7 zhuca...@gmail.com wrote:

> How can we repoduce the error with "Multiply-cliamed blocks"?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/79431b97-c434-47c0-9e1c-2206fcad4a93n%40googlegroups.com.

------=_Part_245_1580309449.1656520918017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm sorry I didn't see this earlier. I don't see any replies. I can't quite=
 parse your question, though. What are you asking about?<br><br><div class=
=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursday, June 1=
6, 2022 at 11:57:20 PM UTC-7 zhuca...@gmail.com wrote:<br/></div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px soli=
d rgb(204, 204, 204); padding-left: 1ex;">How can we repoduce the error wit=
h &quot;Multiply-cliamed blocks&quot;?</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/79431b97-c434-47c0-9e1c-2206fcad4a93n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/79431b97-c434-47c0-9e1c-2206fcad4a93n%40googlegroups.com</a>.=
<br />

------=_Part_245_1580309449.1656520918017--

------=_Part_244_647876883.1656520918016--
