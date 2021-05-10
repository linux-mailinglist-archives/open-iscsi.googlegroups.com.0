Return-Path: <open-iscsi+bncBC755V5RXMKBBWMO46CAMGQEPEFLNKI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 894B5379AF8
	for <lists+open-iscsi@lfdr.de>; Tue, 11 May 2021 01:52:58 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id w19-20020a1f94130000b02901e9c73307d5sf2276501vkd.5
        for <lists+open-iscsi@lfdr.de>; Mon, 10 May 2021 16:52:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620690777; cv=pass;
        d=google.com; s=arc-20160816;
        b=INbPxybMpR3SOEH5aBuI0QYnoWxLmQfOTBmN00cd1nj8LPSXg/5XE3zFReG7ALcBN+
         R+JyZ3IASSVSGYBV0Aa1IT4U9nR6ZBiEObDRSjm/hveWO7MHcd2hYpCGQONmoU1GCCch
         cwOmfu+h5Ejbzy5ZLWJI9zTSgr6bJxDrY26Z6OgxqVJhpfKKIXkYrcbNyU74ZXU7WJpa
         4xhfoItuyRZBXJjq6WYjqP7uysDu6C/pYRwHGOTPXX303HOx4qw6ScGOFsmIRclyoTLY
         scI+sDNYN+bX7lGLIGS2dJHERDsWiFgKxbSW9/dTljJ9BjingOyg+/IM2dF1licJ1LIZ
         wvDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:in-reply-to:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature:dkim-signature;
        bh=rZasOfElJ/zbE1cN+M6Km6HqNnKf9gAC+zZ8QZTtKYY=;
        b=HZQSZxZToZ6zHPU5peUyPkMvUG5XVi3K/x5IbU7sBqsQlCnG+nkYXxFd9IO1+RL2Bq
         3ghV5Ydgmd+jxJNAEuf/Z0hf9Lo4R9PQ+1V0oW1LTTsq9yyvauCAyNoIDrqFIIfQuTiR
         60y77lNSrsduUHjuvYULZZJJUFqMzVnsTIbKpMMKBg4UpgoZg1fPVMxJcZm6t6VgO+2N
         RU2EwN1kfpHOcDTErdXNsa4ZieJFxvSXmPneD9wHvke2wFYnABXLM8nSED+tdsprHlPZ
         69Haa2tqRt5gXthZzaiLZBIYjTQWWe6VAa9JAMT133MgQfjbdOEYXi6RiMkHB8b4sBYt
         9I3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nTj/K5Zs";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:in-reply-to:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rZasOfElJ/zbE1cN+M6Km6HqNnKf9gAC+zZ8QZTtKYY=;
        b=iLuAsYOpBBmFpuKQuzEqpAQrAb/BtwJEqCb7bjGYTxzhRt1wEcERw1Uv9+UBcgGwF7
         EZAjQ7gc4fkdvH9JhCP8kJX1l3rv+R4lhAF7g+D3bLhG+tWMqJ6cWTugpcKBFp78gaw6
         WgBZ8TSqfqdcWuSHweB8NiMcKF0ZiIMIBWEo2nLXEMOG110ltZxTVrWSu+5DiVTC+/UK
         +pSvUG6o6IlbXJfbA5N91MO4w+irCb0iZ5LO6J+u77IZafXEs7laSPYmKDBIkFAPteh2
         rCsDXsg4eCGzbThpdHTtnTIPkpOR95ILrmF4WBBjY2Cmuyleg8m8seSarLB40nOcmhpL
         42cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:in-reply-to:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rZasOfElJ/zbE1cN+M6Km6HqNnKf9gAC+zZ8QZTtKYY=;
        b=ICmZvby6kUfuUruBok9/z3fSzM7iQYaW9Y39Zne43Rab/n1bg1aGIn2o4D5M9HTBHR
         P6MXQduw4gjDXUNgK6oPSqSx+JXHdEVIl/nCDD9/ZSjqw7N+p7YDS7wueltDS797LYwk
         AqNGyAT7O6MNWdnIi2wtirDueo+ksuYuS0xv+sE77xoT/fJ6Lu6+CRAI2uA8Q6fUb71R
         zBjokCSJlY6XxgjOKaJwP6Nieh8z98Ags/hqmHb2Yl+IhVacR8RPHcbQE4IXAhAXQH3k
         kIZqFFph/jh+noWxftcXp3rVoJL6lSE4O0F85IJUOvkM6zHYx7PK1zPcagHZvmCDVFix
         QPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:in-reply-to:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rZasOfElJ/zbE1cN+M6Km6HqNnKf9gAC+zZ8QZTtKYY=;
        b=QEd2tQM/3mp61vr0ZKNxjaPHSzdbfk2wbhMPtBobC7VGkgkUjw3O9XcMD+clad42rv
         8+EyMEt8VWAaGf5idthtWwsBM7aSMoWn9xMl6CAyr7GeZYndgLYQx+x8V/c1K0+bosqP
         nWSLOxlJ4RR307cLuREXgXXE4DjXADTB9tdG2W9ACiwlASMgBBN0RAon+XF1+ccT6Zo8
         Yrls9HPFayKECluw5YrEBotERWvXYmZqWk4iHoXmnzXXAVIzn5RE65SEkw4mPo7Sgck9
         RNvriothl4UvkI4Ty3Gd6ADt2gOMOim6+1L9yJKQAyNgDetOTzrOsATDeM0CUY6M9b/G
         RZpQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530XgCK5IOqJicqs4k6O83XHp4oZASqZfUvnP+AuG4JU1sW4fpZx
	4pbJO2XP/S8Aa4KAiRNziX4=
X-Google-Smtp-Source: ABdhPJycK9iuuZ46fUvinTgZyHlemEsYz0no90wDxJVm9SFXLSQs10eSTkk7AYHRPOlirUFMVwxzLg==
X-Received: by 2002:a67:13c2:: with SMTP id 185mr22622968vst.32.1620690777365;
        Mon, 10 May 2021 16:52:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:de96:: with SMTP id r22ls2945531vsk.7.gmail; Mon, 10 May
 2021 16:52:56 -0700 (PDT)
X-Received: by 2002:a67:6c85:: with SMTP id h127mr21598939vsc.16.1620690776706;
        Mon, 10 May 2021 16:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620690776; cv=none;
        d=google.com; s=arc-20160816;
        b=D6/p5/4txcQ3dyfMxOhTOwsnGC38f8WgmVx0eAGYyrrJZAQV31Hhj4sgpjfp8RhZh0
         V6QVM7YVAXwxr2sqiy+WpJaNucQpGos4LUsO7uuBCsie3rWxPXfmRvA89BpgdPlJB7kw
         UWfULN7Sww/dfzmRZgybeSFkA58kSTzTQo2alkPbsTFn4Xl3ppjnlH0zYthwQ3EIrPsz
         0W84Np7MUUNzMJkXUKsGE9CBK9tSxt15IC29hlR5+VGi0QKUEDv20GH75/NsC4a5p5Gc
         hIWAVfHXRodsrQvWOEBXyaEvceO60OovecJlrD+CB0zb7zgKA5GbAfbzlev11XhF698w
         mUeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:date:subject:mime-version:from
         :content-transfer-encoding:dkim-signature;
        bh=qKGR1Q5WSEXBWa2jJlmV68Pm8S6Yf2bauG8qAAMhfBM=;
        b=xj09WiDcj0tcnwOevKOFA2dsFHO77CTss6ezOVf82glL2vo9+xMkXGoVSk/lFM3xTm
         pAclJyZg+P99yJrx0YfPyE4k4Swm/V9q4a9/D0zeHfOepacXg/n5hgav2aOGBXHGu2Z5
         PiUu3nun6WrMk3SxrRFwGYsRXnTdSoZ3BIedBC626zstJR1I7Izu0m3FMMWNzTXJ7whu
         qgn6/ecPQb+Ha4RYZFzfJjgkTINBJCx8ngU06w6cIZowDKUsncIkc4zCxgQxE4rbJvKt
         WojbmLQkV6Aa1mMUdSjNoVCrekwfPkImZkV1mshObbvBdk6eDGeqIIAfUbq/LLSuN+ln
         0sNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nTj/K5Zs";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id f9si1299085vkm.2.2021.05.10.16.52.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 16:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id z6-20020a17090a1706b0290155e8a752d8so257545pjd.4
        for <open-iscsi@googlegroups.com>; Mon, 10 May 2021 16:52:56 -0700 (PDT)
X-Received: by 2002:a17:902:c945:b029:ee:e8b0:f9b8 with SMTP id i5-20020a170902c945b02900eee8b0f9b8mr27084237pla.3.1620690775639;
        Mon, 10 May 2021 16:52:55 -0700 (PDT)
Received: from [192.168.10.13] (c-73-25-22-216.hsd1.or.comcast.net. [73.25.22.216])
        by smtp.gmail.com with ESMTPSA id x13sm5351952pjl.22.2021.05.10.16.52.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 16:52:55 -0700 (PDT)
Content-Type: multipart/alternative; boundary=Apple-Mail-3B3EA96A-F469-4335-9142-7C81E13B96D5
Content-Transfer-Encoding: 7bit
From: Lee Duncan <leeman.duncan@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: Shouldn't firmware nodes be marked as "onboot", for consistency?
Date: Mon, 10 May 2021 16:52:54 -0700
Message-Id: <028D67F8-7303-475C-BFB0-5121E6295C14@gmail.com>
References: <43e49037-b88c-4954-aa42-54e6807ff259n@googlegroups.com>
In-Reply-To: <43e49037-b88c-4954-aa42-54e6807ff259n@googlegroups.com>
To: open-iscsi@googlegroups.com
X-Mailer: iPhone Mail (18D70)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="nTj/K5Zs";       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::1029
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


--Apple-Mail-3B3EA96A-F469-4335-9142-7C81E13B96D5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On May 10, 2021, at 4:46 PM, The Lee-Man <leeman.duncan@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hi All:
>=20
> I'm working on getting iBFT (firmware) booting working well using open-is=
csi with dual paths and DM/multipathing, and I noticed something.
>=20
> When you run "iscsiadm -m discovery -t fw", it creates node database entr=
ies for your firmware targets. But it sets "node.startup", and "node.conn[0=
].startup" to "manual" instead of "onboot", even though open-iscsi treats t=
hese entries like "onboot", since they are based on firmware.
>=20
> I find it a little more consistent if they are marked as "onboot". A simp=
le path in iscsiadm would change this. Any objections?

Path -> patch=20
> --=20
> You received this message because you are subscribed to a topic in the Go=
ogle Groups "open-iscsi" group.
> To unsubscribe from this topic, visit https://groups.google.com/d/topic/o=
pen-iscsi/FTmZIFp6_40/unsubscribe.
> To unsubscribe from this group and all its topics, send an email to open-=
iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/43e49037-b88c-4954-aa42-54e6807ff259n%40googlegroups.com.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/028D67F8-7303-475C-BFB0-5121E6295C14%40gmail.com.

--Apple-Mail-3B3EA96A-F469-4335-9142-7C81E13B96D5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto">On May 10, 2021, at 4:46 PM, The Lee-Ma=
n &lt;leeman.duncan@gmail.com&gt; wrote:<br><div dir=3D"ltr"><blockquote ty=
pe=3D"cite"><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"lt=
r">=EF=BB=BF<br><div>Hi All:</div><div><br></div><div>I'm working on gettin=
g iBFT (firmware) booting working well using open-iscsi with dual paths and=
 DM/multipathing, and I noticed something.</div><div><br></div><div>When yo=
u run "iscsiadm -m discovery -t fw", it creates node database entries for y=
our firmware targets. But it sets "node.startup", and "node.conn[0].startup=
" to "manual" instead of "onboot", even though open-iscsi treats these entr=
ies like "onboot", since they are based on firmware.</div><div><br></div><d=
iv>I find it a little more consistent if they are marked as "onboot". A sim=
ple path in iscsiadm would change this. Any objections?<br></div></div></bl=
ockquote><div><br></div>Path -&gt; patch&nbsp;<br><blockquote type=3D"cite"=
><div dir=3D"ltr">

<p></p>

-- <br>
You received this message because you are subscribed to a topic in the Goog=
le Groups "open-iscsi" group.<br>
To unsubscribe from this topic, visit <a href=3D"https://groups.google.com/=
d/topic/open-iscsi/FTmZIFp6_40/unsubscribe">https://groups.google.com/d/top=
ic/open-iscsi/FTmZIFp6_40/unsubscribe</a>.<br>
To unsubscribe from this group and all its topics, send an email to <a href=
=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-iscsi+unsubscribe@=
googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/43e49037-b88c-4954-aa42-54e6807ff259n%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d=
/msgid/open-iscsi/43e49037-b88c-4954-aa42-54e6807ff259n%40googlegroups.com<=
/a>.<br>
</div></blockquote></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/028D67F8-7303-475C-BFB0-5121E6295C14%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/028D67F8-7303-475C-BFB0-5121E6295C14%40gmail.com</a>.<br />

--Apple-Mail-3B3EA96A-F469-4335-9142-7C81E13B96D5--
