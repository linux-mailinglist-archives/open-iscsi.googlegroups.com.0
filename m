Return-Path: <open-iscsi+bncBCNZBX4ASILBB6742DTAKGQE5S3S56Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id E34D018C53
	for <lists+open-iscsi@lfdr.de>; Thu,  9 May 2019 16:51:40 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id v198sf2328940qka.5
        for <lists+open-iscsi@lfdr.de>; Thu, 09 May 2019 07:51:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557413499; cv=pass;
        d=google.com; s=arc-20160816;
        b=v+lFF4XSOROzDhJY+066TCTcXst4puCyliQISFfib/Bg6K2us4b99IdKEEchu7KNmb
         eyzwQydyu8CtJ1UpTM89mcfmJFdC/i2iFbYKlacR9iH9JuVIf40J+ZHp0WifjbCgaTaG
         Rzkxogt3h707fBO/rCNBL41FucaNB83aUcNHpyuD+nqAhm1LSBqcMr2klQiMfIpu6OFY
         OVZT+MYc8jnvKYoK87gz47pV8nlUsWDhOpjo5Dpw9Jpg33X4Jrh+sXmzw1X+dWsyz33J
         3sL9iqGkJx6LiQ+fF3Kz/IEr/TQZh96LWp6KgCW7CLtOnx03SbdjqVWOC3Wj7D4f0rDJ
         TAGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3rvAkPSit4w5sadzTMlVsulCNAYvBnViGcsJRlH1XEo=;
        b=O0tAMDX13opFrOi8x9rmT49kO9u9fm9kp0QEe4B2Iay6LR2qs7XYqAITHA5H4XKXBL
         aUGIZIFaQqqaTCJcMgFnDeP6wZQibwPp6srRSDbAviofc1RrhdiNA2qxtZWSVes+oyBZ
         kBlov8X15hyELPSNjw2Hf2Bk9pKddIVJ+fX9uLC56BhxrSsoAtsdlvOYtlZfTS5JdaOF
         CVc0GlhyYKNckU2QJI56zqLKaOJM+/wKHLlcnJfI3OkBbiC7egTAcBHZfqQjrYcbEgBz
         rNgvDKy1WO+/3FSy+7zRzntnPfH1XfQdmB2KAJ8iZFpECPPoGj/w167ZYOBaxMHKKBF0
         hndQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wriede@gmail.com designates 209.85.217.68 as permitted sender) smtp.mailfrom=wriede@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3rvAkPSit4w5sadzTMlVsulCNAYvBnViGcsJRlH1XEo=;
        b=CSrkfTabKpIjx2v+3YTwJ8lOI71m2bySKrJpGHyYbU0vhH+wqQKCKjDWdvmCV8A0zE
         hy7jKzj43SEQIKtX8xnUG9DK9swn2Ui2pDUUa7k/FRIEHu7LboJhxs6R3xCDLRGhvDV9
         ZkjRZmJCMKLTyRy/KVqJf1ZQ9rvxn5AHZJ2Ez3RfZ57qupSFuzAjxkxFTZuhZ5i9Wz67
         Qys4AjmftsiFKVgeK2K7GrUO+7LssTF7N7kn37Qw2zAmRDI5lnHWyVlA9TfINHQtibSW
         mVvX3PICP0nRb/2aPepjZNFngvjjxsYCf41qTY8mMVEEjEBjkTrEkU7tpQsTEQM+Pm4Z
         ceRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3rvAkPSit4w5sadzTMlVsulCNAYvBnViGcsJRlH1XEo=;
        b=Z5IWB81vJxWXhdfMOMqwzq20f0CsdgRz6fuw+N0g7tmsP/bNAxpBejjqcPBAVij/ND
         jcocMk9K1Ij22bpGZudwTKSTWujnlJzHfq/8ejfNP2BEzRXbXE3wjIl0XzmfkC1XNSLA
         hQnGlKE8Ey/TNWkycl++ZIKeIMm1+EwCGQiKmOluKkmIGGpNcuIzxfmsSW9uwRHP/ILQ
         j9lo/JGhi1bb99y/PMi9QfkQmgf9xqMivcp/kmq224G8P288NMjYG4MRjh6r7p+SPf3F
         TiXAgzjrvO11J4lsuiFc4JV9Q53FVDJmSAEmRl8VB/TR5tQIUXDajPJE6EmGTBFm1a9J
         FUYQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWtdDeQw62j6+wEdLztzID0spysB17AXgrCwv7MOCbVh8C2YrW4
	3V/4NZItcXIBdzzI2tC6jys=
X-Google-Smtp-Source: APXvYqzCFdyaZ9vsmQsDMSBCVRMc1S8lzcIbd4imBZsb3v94MviGtOVphxQrahVXGjgKWOWzHFXC4g==
X-Received: by 2002:ac8:2f98:: with SMTP id l24mr4160735qta.78.1557413499746;
        Thu, 09 May 2019 07:51:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:2306:: with SMTP id a6ls781865qta.14.gmail; Thu, 09 May
 2019 07:51:39 -0700 (PDT)
X-Received: by 2002:ac8:c8c:: with SMTP id n12mr4041571qti.73.1557413499610;
        Thu, 09 May 2019 07:51:39 -0700 (PDT)
Received: by 2002:a37:4c4e:0:0:0:0:0 with SMTP id z75msqka;
        Fri, 3 May 2019 09:09:42 -0700 (PDT)
X-Received: by 2002:a0c:b141:: with SMTP id r1mr8533814qvc.177.1556899781829;
        Fri, 03 May 2019 09:09:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556899781; cv=none;
        d=google.com; s=arc-20160816;
        b=sDvCsxvl9y4rHE16vw5zjd3kpOLMv7cNCT7oyBIhMa8ji6JeemxXeXzHUFXofgw9+/
         Y/HdAY58JRHgSEDrzINFZFz8GPhkozgsf9akHdIee4+jGGvnx6A0HCOTVY+iTRYeIO25
         znau5FQ8VzZKs7Gr3jJxhmpe2rvdELOG7nKcUyzoCGE7OpuXxfgqcpFlDjqTVcUauMiM
         7MH7yOxficWfWQcbyT783nTWGYP8lufTi8DuxvwB7RHXCg1zX89t1sY4ghqey0o3Txwj
         u1JcVLihSIHRrniNUx/lz6wHdqyCKkAlrvxX3miFv7ZyLyF3vD8b7KmdJ916Nd2ITKpf
         cTaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=+Y7zLsXgOgdUaVYtaV4n6NkIRnWZJJqo6ILlE8PgPDA=;
        b=mGD2SKL6vr6Il6QlxR/Ntxs8p68Pdht5k/TFX++BSzLHL3qZMk0Hz/cQhhE8e973PT
         52zu7fc3ZnjZ/IM/YKYd3NUE7Tw3acNQhfyOC3pGrhOfK3SGdeeYZARiMHzaJdQWBqIk
         YhNZSh6tn5cuBaR3yi/cJXJmjjNB713Gk1OnmZGAZsfR90DeZI9+NF7FxRm0AFso8TKG
         IRWM7d5mcAyolHAhcWCQ4afbhmie5+LbK5hnfru2VyI66xRJ6MqSQQMiuEYSQ5ZKsBFP
         ji0nBH9TEOM3gG1Vz/WNpGwfVf5rmdvh5D4VG0ajYYyzXTHPor/1KenbK9ooMQG1BLmI
         wnXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wriede@gmail.com designates 209.85.217.68 as permitted sender) smtp.mailfrom=wriede@gmail.com
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com. [209.85.217.68])
        by gmr-mx.google.com with ESMTPS id s48si172988qth.2.2019.05.03.09.09.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 09:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of wriede@gmail.com designates 209.85.217.68 as permitted sender) client-ip=209.85.217.68;
Received: by mail-vs1-f68.google.com with SMTP id x78so3941713vsc.3
        for <open-iscsi@googlegroups.com>; Fri, 03 May 2019 09:09:41 -0700 (PDT)
X-Received: by 2002:a67:f455:: with SMTP id r21mr2066639vsn.194.1556899781308;
 Fri, 03 May 2019 09:09:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190501161417.32592-1-hch@lst.de> <20190501161417.32592-25-hch@lst.de>
 <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de> <20190502125312.GA2560@lst.de>
 <10a8c8f5-879c-685f-f43c-d5af678b2187@suse.de> <CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddiiw@mail.gmail.com>
 <c9a58611-13e2-8e13-b573-b504032c017c@suse.de>
In-Reply-To: <c9a58611-13e2-8e13-b573-b504032c017c@suse.de>
From: Willem Riede <osst@riede.org>
Date: Fri, 3 May 2019 09:09:30 -0700
Message-ID: <CAKnBiiYqwPNFU709s8bb+UhX18oqkTRyHpkO2pBAenisHiPUig@mail.gmail.com>
Subject: Re: [PATCH 24/24] osst: add a SPDX tag to osst.c
To: Hannes Reinecke <hare@suse.de>
Cc: Christoph Hellwig <hch@lst.de>, "James E . J . Bottomley" <jejb@linux.ibm.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, Doug Gilbert <dgilbert@interlog.com>, Jens Axboe <axboe@kernel.dk>, 
	=?UTF-8?Q?Kai_M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>, 
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com, 
	osst-users@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
	Chriosstoph Hellwig <hch@losst.de>
Content-Type: multipart/alternative; boundary="0000000000006a76a80587fdfab6"
X-Original-Sender: wriede@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wriede@gmail.com designates 209.85.217.68 as permitted
 sender) smtp.mailfrom=wriede@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--0000000000006a76a80587fdfab6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2019 at 1:05 AM Hannes Reinecke <hare@suse.de> wrote:

> On 5/2/19 9:55 PM, Willem Riede wrote:
> > On Thu, May 2, 2019 at 7:19 AM Hannes Reinecke <hare@suse.de
> > <mailto:hare@suse.de>> wrote:
> >
> >      >
> >     Maybe it's time to kill osst.c for good ...
> >
> >
> > Yes. I've been thinking about doing just that. The devices it supports
> > are now thoroughly obsolete. The manufacturer has gone out of business.
> > All my test drives have broken down over time, so I can't even test any
> > changes any more.
> >
> Just when I thought to reach out to you :-)
>
> Thing is, we've done numerous changes to the 'st' driver in the course
> of the years, most of which seem to have avoided osst :-(
>
> So what's your suggestion here?
> Just drop it completely?
> Or can we somehow fold the OnStream-specific things back into st.c?
>
> I sincerely doubt anyone in the entire world still has an Onstream drive
working.
These days cheap flash drives have larger capacity and are way more
convenient.

I recommend to drop osst entirely and not to contaminate st.

Regards, Willem Riede.



> Cheers,
>
> Hannes
> --
> Dr. Hannes Reinecke                Teamlead Storage & Networking
> hare@suse.de                                   +49 911 74053 688
> SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
> GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
> HRB 21284 (AG N=C3=BCrnberg)
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAKnBiiYqwPNFU709s8bb%2BUhX18oqkTRyHpkO2pBAenisHiPUig%40mail.gma=
il.com.
For more options, visit https://groups.google.com/d/optout.

--0000000000006a76a80587fdfab6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif;font-size:small"><span style=3D"font-fa=
mily:Arial,Helvetica,sans-serif">On Fri, May 3, 2019 at 1:05 AM Hannes Rein=
ecke &lt;<a href=3D"mailto:hare@suse.de">hare@suse.de</a>&gt; wrote:</span>=
<br></div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On 5/2/19 9:55 PM, Willem Riede wrote:<br>
&gt; On Thu, May 2, 2019 at 7:19 AM Hannes Reinecke &lt;<a href=3D"mailto:h=
are@suse.de" target=3D"_blank">hare@suse.de</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:hare@suse.de" target=3D"_blank">hare@suse=
.de</a>&gt;&gt; wrote:<br>
&gt; <br>&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Maybe it&#39;s time to kill osst.c for good ...<br>
&gt; <br>
&gt; <br>
&gt; Yes. I&#39;ve been thinking about doing just that. The devices it supp=
orts <br>
&gt; are now thoroughly obsolete. The manufacturer has gone out of business=
. <br>
&gt; All my test drives have broken down over time, so I can&#39;t even tes=
t any <br>
&gt; changes any more.<br>
&gt; <br>
Just when I thought to reach out to you :-)<br>
<br>
Thing is, we&#39;ve done numerous changes to the &#39;st&#39; driver in the=
 course <br>
of the years, most of which seem to have avoided osst :-(<br>
<br>
So what&#39;s your suggestion here?<br>
Just drop it completely?<br>
Or can we somehow fold the OnStream-specific things back into st.c?<br>
<br></blockquote><div><div class=3D"gmail_default" style=3D"font-family:ari=
al,helvetica,sans-serif">I sincerely doubt anyone in the entire world still=
 has an Onstream drive working.=C2=A0</div><div class=3D"gmail_default" sty=
le=3D"font-family:arial,helvetica,sans-serif">These days cheap flash drives=
 have larger capacity and are way more convenient.</div><div class=3D"gmail=
_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">I r=
ecommend to drop osst entirely and not to contaminate st.</div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif">Regards, Willem Riede.</div></div><div><br></div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
Cheers,<br>
<br>
Hannes<br>
-- <br>
Dr. Hannes Reinecke=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Teamlead Storage &amp; Networking<br>
<a href=3D"mailto:hare@suse.de" target=3D"_blank">hare@suse.de</a>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+49 911 74053 688<br>
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg<br>
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah<br>
HRB 21284 (AG N=C3=BCrnberg)<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:open-iscsi@googlegro=
ups.com">open-iscsi@googlegroups.com</a>.<br />
Visit this group at <a href=3D"https://groups.google.com/group/open-iscsi">=
https://groups.google.com/group/open-iscsi</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAKnBiiYqwPNFU709s8bb%2BUhX18oqkTRyHpkO2pBAenisHiPUig=
%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.go=
ogle.com/d/msgid/open-iscsi/CAKnBiiYqwPNFU709s8bb%2BUhX18oqkTRyHpkO2pBAenis=
HiPUig%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--0000000000006a76a80587fdfab6--
