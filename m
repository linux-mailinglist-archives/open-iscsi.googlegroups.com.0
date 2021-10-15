Return-Path: <open-iscsi+bncBCYMVIPVXQMBBAPGU2FQMGQEQDVS47Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id F31D842F956
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 18:57:38 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id k2-20020ab04302000000b002cae18c5454sf1968197uak.15
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 09:57:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634317058; cv=pass;
        d=google.com; s=arc-20160816;
        b=UpaIfr1PSsZjzYKnMYqtZu+0Vw6+XH69dQjOHBZNaBqRWMEk/GyU2+TZPuvQgAYadp
         PnuztkkyYlAl96u2Lw+pwg0KqmKXPn1Nq9sfm9VBLzsjHyUV2Vkv1+wadRwxIXvWCOP9
         1xK3YCDAdc32nEVFHQ2LAg47tOF33fl9es3ZZJYA67ofFKrgWZeXMsCYYUJYsUgQIe0R
         yre6Bg/RDLouTd/JJYpL5plDGZriffLgiEXiOTv/e2Aum6rzvfxPuAEivNbi3HgIDFj/
         lJK8qya+z84/ILdv7Ya3oZ1u3LYmjIX7hyIzkzgBvQ7v1OpWGLzTtJCae/uHd9Pf2b5C
         OnZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=e7bCwMS04CvtbT37SvkMmXFIQoQsxs0i0TyKqRPH9vs=;
        b=UiSpJW4R3ffLsKHNb0fK46A9LTpqKgME1fmjnt5EA74bJxS9UEED8yas86sPfvkpiU
         /sBk4CjUPQamkXmKw/mU1FxmoqdYSgFaHrmaRvAc15vltOPJxNkQoz3pwyo6adUNhK2e
         MQ2Qj19h+LHWKkcuyu1lLYfb4Qndpx9E+/pwjjjacD1pi5e6hhThrMmTrJqF6rvuVhEW
         Qen2ZDu1hflT95gTn/9uvMGeqAQI2bj/JQQJfkB93cMGSVoukbh8JuMGsZ+N35ZifGQK
         gqD//kD9orjiVPR7755StsM2ETqCXCCuGxw3eQ1MAyKKnZzGUVY9IdE/pmI9FSR3lfxp
         ovng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZORbdGZF;
       spf=pass (google.com: domain of cleech@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e7bCwMS04CvtbT37SvkMmXFIQoQsxs0i0TyKqRPH9vs=;
        b=Mt9tOBOSDxKfQakCksDZeDvLAuWxqewblNSMUXpLb3qiywZY2EfPvcP/7d/eNIpM3g
         E32T/GPSu8dsJ7r3bJfTX6ns0BhDtGMMHVyduS8Ledid3t0+A88ivWLY7V12SDjOb2s2
         EZeOqw0jZsisvUMbJpObuXNTYTrdc4fT6ajvfjC10z193ABCtGVamzbYwTVaJNy19NRJ
         sy7kaki/9E1NkUXzb8XI3QZfcPbshseAIFutMror5/H0EfVrcmW+GoF5EOsKeCC33Pwk
         RSncs8NiJL2YKJl/PY7Kon8slQL8fKrmiom5FXa2kayCTVmgmtRnmtoB2PEmLi3wxBU1
         k/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e7bCwMS04CvtbT37SvkMmXFIQoQsxs0i0TyKqRPH9vs=;
        b=0Tx6lubKATxMGcOHPYGxFAtKygc72GpCYWhJiE5WPvJKGNV06nOyjZva0KFDx7aATS
         GmQeU40pYCU71MR8QKGti7NBZ+ik+ksbERJxYE0kRXa/hIlX2fkTdjWrkEgdvhmzBJx+
         37nBIxy2kI9t49mcVj/+F+dRwfKzxkLTmcJhnqUygtuQ0GIn3fiiOiTygM0HEUZOMUbo
         AaTO86o/c+HOVL3yzal988OlwZVfuUfPyJ4XlFi0SYfJssrkakNZWUydK8Sf/nRcG8bU
         mgWoJphYyM3oasmpzjkNxRi2NFpanLqd600PsRH4KyEOoAD9v0darXkgCPsjuQWP8urU
         fo5A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5314m6qUVwhHNy1izHtIEhMrsZyrA7FSxvL2jtZrFRZRDFCTEfkH
	nsbv9nmZP1IQ8eWXWPwE2W4=
X-Google-Smtp-Source: ABdhPJzSVgWYVDOyE/++cG93MkYxyqLiVZEz568Fn8G4NG5U7KTVLRld4jqut7/lzJDnBTUqwhZJZA==
X-Received: by 2002:ab0:16d4:: with SMTP id g20mr13822263uaf.114.1634317057817;
        Fri, 15 Oct 2021 09:57:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:7c74:: with SMTP id h20ls1795381uax.1.gmail; Fri, 15 Oct
 2021 09:57:37 -0700 (PDT)
X-Received: by 2002:ab0:471d:: with SMTP id h29mr13717089uac.11.1634317057241;
        Fri, 15 Oct 2021 09:57:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634317057; cv=none;
        d=google.com; s=arc-20160816;
        b=QOnuYFS1qpSrRe73aUeE1F5+wcxwdD/zFCH1d9jIatu1pyZov+52Yn9XBGWzYkCrya
         7yxWuu7Y3hMP3+FflLXfpY64pKlVSe5ETpPVmWUuB004YgGR7Yv1WHdgx+jjRwOdnwhF
         rGaTSOMfO+7HPky5R6sRLk5nz5xLHsJ9ck1FkYZsXaQ7on5CztZU3wGcKf07V+P7jIJa
         j9RMP0kD5qe9hTn4mI2mknNQQssE+fV0rPVQpgdtCcnfV61SPh+Xj15gVDA4ddo7Lrh7
         BUzw66fXQBzR+MTzjNXvab7r48EA19lzkwDX2pdZ/HiVSqfIVCMuAux20yV9ZXsRoOV8
         iPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rfuOnFiPtKk5SrJUq7GfU0ulZlmipPkZ4HzZn/kieC4=;
        b=xqluWOhXo5n3w2PlT4e3S7qqpE9mX9UgLPeC/Pi3d3hORNNY44YzGdXI7BoeHkE1Fu
         AocCpOfLBHyoftzTvhW8P3rPREjBm+Em7MVCnhlr0iEXTh491M3rH+A052lY396thKBS
         razH/FIv+6HisnqM3xtCInqJ/iOH9N89tmL/pMNKODDfMsCdHNCPGsbHxfrWr8HURT5o
         /MU3TP1ueL5f1IrfW8wcTmxS06Bc3cStNVnSc1LLxbljU7R9XgYnsQmzjBeC2Dre+UcC
         XIbbMqipPzdpKgv8ZJI/yWKr+Ma0oXO0MXVGjATdEJK/OGgn1Dyn8RLZQFka/+0guxE/
         aEtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZORbdGZF;
       spf=pass (google.com: domain of cleech@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id c19si458334uad.1.2021.10.15.09.57.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 09:57:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-lZULcJa1MzeGZ3T_yP85ug-1; Fri, 15 Oct 2021 12:57:35 -0400
X-MC-Unique: lZULcJa1MzeGZ3T_yP85ug-1
Received: by mail-wm1-f72.google.com with SMTP id k20-20020a7bc414000000b0030dcd454771so988082wmi.8
        for <open-iscsi@googlegroups.com>; Fri, 15 Oct 2021 09:57:34 -0700 (PDT)
X-Received: by 2002:a05:600c:350c:: with SMTP id h12mr26942406wmq.163.1634317054058;
        Fri, 15 Oct 2021 09:57:34 -0700 (PDT)
X-Received: by 2002:a05:600c:350c:: with SMTP id h12mr26942378wmq.163.1634317053791;
 Fri, 15 Oct 2021 09:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <20211015131115.12720-1-vegard.nossum@oracle.com>
 <20211015133635.GA26418@gondor.apana.org.au> <3bba3fed-b8f8-b7ce-f26f-8d1ed221144a@oracle.com>
In-Reply-To: <3bba3fed-b8f8-b7ce-f26f-8d1ed221144a@oracle.com>
From: Chris Leech <cleech@redhat.com>
Date: Fri, 15 Oct 2021 09:57:22 -0700
Message-ID: <CAPnfmXJQCEH3KpECqPoOU=73amqe0ubnx9Z36b1Ra0Yrg8_gUg@mail.gmail.com>
Subject: Re: [PATCH] scsi: libiscsi: select CRYPTO_HASH for ISCSI_TCP
To: Vegard Nossum <vegard.nossum@oracle.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, Lee Duncan <lduncan@suse.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000007122d805ce6717fa"
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZORbdGZF;
       spf=pass (google.com: domain of cleech@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

--0000000000007122d805ce6717fa
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 15, 2021 at 6:54 AM Vegard Nossum <vegard.nossum@oracle.com>
wrote:

>
> On 10/15/21 3:36 PM, Herbert Xu wrote:
> > On Fri, Oct 15, 2021 at 03:11:15PM +0200, Vegard Nossum wrote:
> >> Fix the following build/link error by adding a dependency on
> CRYPTO_HASH:
> >>
> >>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_dgst_header':
> >>   libiscsi_tcp.c:(.text+0x237): undefined reference to
> `crypto_ahash_digest'
> >>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_segment_done':
> >>   libiscsi_tcp.c:(.text+0x1325): undefined reference to
> `crypto_ahash_final'
> >>
> >> Fixes: 5d6ac29b9ebf2 ("iscsi_tcp: Use ahash")
> >> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> >> Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
> >> ---
> >>  drivers/scsi/Kconfig | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
> >> index 6e3a04107bb65..09764f3c42447 100644
> >> --- a/drivers/scsi/Kconfig
> >> +++ b/drivers/scsi/Kconfig
> >> @@ -290,6 +290,7 @@ config ISCSI_TCP
> >>      tristate "iSCSI Initiator over TCP/IP"
> >>      depends on SCSI && INET
> >>      select CRYPTO
> >> +    select CRYPTO_HASH
> >>      select CRYPTO_MD5
> >>      select CRYPTO_CRC32C
> >>      select SCSI_ISCSI_ATTRS
> >
> > CRYPTO_MD5 already selects CRYPTO_HASH so this shouldn't be needed.
>
> You're right, my apologies.
>
> libiscsi_tcp.o is built for CONFIG_ISCSI_TCP, but it's _also_ built for
> CONFIG_SCSI_CXGB3_ISCSI and CONFIG_SCSI_CXGB4_ISCSI. I missed that when
> I looked at the Makefile and wrongly assumed that CONFIG_ISCSI_TCP was
> missing the select.
>
> I'm not sure what the right fix here would be -- should
> CONFIG_SCSI_CXGB[34]_ISCSI depend on CONFIG_ISCSI_TCP..? Or should we
> add those CRYPTO* selects in there as well?
>

Are  Kconfig entries for libiscsi and libiscsi_tcp needed to handle this
properly?  Currently they're added to the object lists with each configured
driver that requires them.  I'm not even sure what happens if you manage to
configure them into both obj-y and obj-m.

- Chris Leech

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAPnfmXJQCEH3KpECqPoOU%3D73amqe0ubnx9Z36b1Ra0Yrg8_gUg%40mail.gmail.com.

--0000000000007122d805ce6717fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Oct 15, 2021 at 6:54 AM Vegard No=
ssum &lt;<a href=3D"mailto:vegard.nossum@oracle.com">vegard.nossum@oracle.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><br>
On 10/15/21 3:36 PM, Herbert Xu wrote:<br>
&gt; On Fri, Oct 15, 2021 at 03:11:15PM +0200, Vegard Nossum wrote:<br>
&gt;&gt; Fix the following build/link error by adding a dependency on CRYPT=
O_HASH:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tc=
p_dgst_header&#39;:<br>
&gt;&gt;=C2=A0 =C2=A0libiscsi_tcp.c:(.text+0x237): undefined reference to `=
crypto_ahash_digest&#39;<br>
&gt;&gt;=C2=A0 =C2=A0ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tc=
p_segment_done&#39;:<br>
&gt;&gt;=C2=A0 =C2=A0libiscsi_tcp.c:(.text+0x1325): undefined reference to =
`crypto_ahash_final&#39;<br>
&gt;&gt;<br>
&gt;&gt; Fixes: 5d6ac29b9ebf2 (&quot;iscsi_tcp: Use ahash&quot;)<br>
&gt;&gt; Cc: Herbert Xu &lt;<a href=3D"mailto:herbert@gondor.apana.org.au" =
target=3D"_blank">herbert@gondor.apana.org.au</a>&gt;<br>
&gt;&gt; Signed-off-by: Vegard Nossum &lt;<a href=3D"mailto:vegard.nossum@o=
racle.com" target=3D"_blank">vegard.nossum@oracle.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 drivers/scsi/Kconfig | 1 +<br>
&gt;&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig<br>
&gt;&gt; index 6e3a04107bb65..09764f3c42447 100644<br>
&gt;&gt; --- a/drivers/scsi/Kconfig<br>
&gt;&gt; +++ b/drivers/scsi/Kconfig<br>
&gt;&gt; @@ -290,6 +290,7 @@ config ISCSI_TCP<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 tristate &quot;iSCSI Initiator over TCP/IP&quo=
t;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 depends on SCSI &amp;&amp; INET<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 select CRYPTO<br>
&gt;&gt; +=C2=A0 =C2=A0 select CRYPTO_HASH<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 select CRYPTO_MD5<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 select CRYPTO_CRC32C<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 select SCSI_ISCSI_ATTRS<br>
&gt; <br>
&gt; CRYPTO_MD5 already selects CRYPTO_HASH so this shouldn&#39;t be needed=
.<br>
<br>
You&#39;re right, my apologies.<br>
<br>
libiscsi_tcp.o is built for CONFIG_ISCSI_TCP, but it&#39;s _also_ built for=
<br>
CONFIG_SCSI_CXGB3_ISCSI and CONFIG_SCSI_CXGB4_ISCSI. I missed that when<br>
I looked at the Makefile and wrongly assumed that CONFIG_ISCSI_TCP was<br>
missing the select.<br>
<br>
I&#39;m not sure what the right fix here would be -- should<br>
CONFIG_SCSI_CXGB[34]_ISCSI depend on CONFIG_ISCSI_TCP..? Or should we<br>
add those CRYPTO* selects in there as well?<br></blockquote><div><br></div>=
<div>Are=C2=A0 Kconfig entries for libiscsi and libiscsi_tcp needed to hand=
le this properly?=C2=A0 Currently they&#39;re added to the object lists wit=
h each configured driver that requires them.=C2=A0 I&#39;m not even sure wh=
at happens if you manage to configure them into both obj-y and obj-m.</div>=
<div><br></div><div>- Chris Leech</div><div><br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAPnfmXJQCEH3KpECqPoOU%3D73amqe0ubnx9Z36b1Ra0Yrg8_gUg=
%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.go=
ogle.com/d/msgid/open-iscsi/CAPnfmXJQCEH3KpECqPoOU%3D73amqe0ubnx9Z36b1Ra0Yr=
g8_gUg%40mail.gmail.com</a>.<br />

--0000000000007122d805ce6717fa--

