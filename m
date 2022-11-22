Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBMUV6SNQMGQEMPASNRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 854416342CD
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 18:45:24 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id r12-20020a05640251cc00b00463699c95aesf9249936edd.18
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 09:45:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669139124; cv=pass;
        d=google.com; s=arc-20160816;
        b=nSlR3NoMoHzpz+DoyLofpuukh04Tk5W2w71qxLG5UTVrp1I8mPrZC+25/xQX3w5PGX
         GIrl8Xp95xCBDye+KaMZvKaPoxXUspxoj8EnAzNbqlpXFPyA9Fp9llBxuVRVAOrUSYhW
         BSfPpW3I/AsTCHuDSbOK1J/GC2rl2MJVUOj6yU6ktHIKzGaUe+pTFSwzDLL3C2R4MXzl
         295Rv8clQoDjp8+kmM17bduZjgWjetpc2qHg0FUbUxhTU/w1BwKJNuXGdlOIC6Pr4tUS
         MrgviesiU61rOBZuhw+GVNJ4E9eyjjh8y4pXeSz6eVf3btWYOgenTtxLDZ9xUzyD4r3y
         MTGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=uN5qJu4Z8UJn6OCQIYqBJfu53sEm+Lkqeme8o+McJFM=;
        b=ECkEikdHlPxpe5HupiRXNdZB3yEXBRHT4WjtIO171nUSqJ9vMYnlX4Eug42Zhi3HC6
         013wDcCpL6w+OCzZRnPTgS4Azi4vQPdwno+bGUWdIB1C6rZd8e3iuQEGFcZb7hFOeEu2
         J35JOVq212S5z74MyJIC7OahE4lSB1tSDs1904ff1A41/QrQSJorQ+e4g9bpnQV00215
         xUEwNVKs+Tl0mq+MiOwxa0jwL63K6bgMX6tlqAAnMKKZCWpGV0MELm52WWFCoUThj0xt
         Vz0JvzqEUAuGb3ZEBr6hxSlfwVBBAe2E/syoKafEaF5OHgZVNAQiTVgDvLVnbp5BkEll
         MmyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=pIuZMaX2;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uN5qJu4Z8UJn6OCQIYqBJfu53sEm+Lkqeme8o+McJFM=;
        b=YqsPEeg3a+LWdnx7XF64YPfjyOBYbc6nzIuBRrvIvB+NQle+pUdXogEmu1KhwiQu/+
         ecFY5WoVcenmXfZVgZkHuit4YKdT6eQ7KOPi6hAsuS9rf4sk8HdqV+uB0DlAD03freYH
         AbfBZOdsM+xXFwH0OFfelfSuJUaDRfdEKbSJIGZ9oXX5QHClp482U2zw/lixEUbv4q0T
         5ZO5VFRgsI/94kP4oZrj+GHiCT3IdoVs/0nV7c8ffK91J0SZl9VNxGR81HfmLCfOZBF9
         Gwhblk5PUdFW2OppeLpsq7UQqNHdGJmcc9C9quEEEVgVOw4ksmp++2IAfs+87QJfF+k+
         fS4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uN5qJu4Z8UJn6OCQIYqBJfu53sEm+Lkqeme8o+McJFM=;
        b=P8bZTb5mui4/ZBmzH3XFK3jIy2h0Q1BR721KmFccF3J9KXCJHkyXzCFA+gf0FJwIQH
         mCz+e4NSEdrtN96XC/mH2ljoXvtzuIBiFY8qeycw+MmgvgIuFT/1/YaaYi0K6IvpC5ob
         BPWc1o7Fg8p74SC3fXICFcpzW+g80c8ffyMxmOnSnSt/n4qsAdgUlT10nsRIo6ekuet4
         T+eqhF5IBSTQffU9ixR85dUqCEim6jhLtb1ES3jbyAMgGtLaUSSdi2kr/soAhjQV5D+g
         knsy0Jb1yu0mLOQmdpjLABsD6tJqEJZmqJI6ctRoqQTB8XbJHr/AoRuT7gr+tLg72cSJ
         m6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uN5qJu4Z8UJn6OCQIYqBJfu53sEm+Lkqeme8o+McJFM=;
        b=dfn17WJXuU5O3fjUk3rP0Qghgon72PhnHlsHYYLdx3IrHOfVSKS80OwNOZTNYwT0RI
         4VkqsnqybFUNBnbrPZDzBmL88QOE8UTphqPb7cKs8Bfs92+PicDENI5xg6jnRZsDawz9
         hQY/j572NEhiotwCgUYMkVgPeO4ktN319q+e0oBlFInLBJVXuwVF4qYjcS+d0ALsKyJn
         GcHFexqvEt8PEY6XtYep/V8du3AaWWjgxvUlCAutU7oEm/iLNT1HUQlzVODP74AGsEaj
         sV4z9zXUjJ5805DN7bi/+d9HzVCAKXmf70LcHhB08ciCczn3ppyzhwykUMHywSF1sw46
         +VYw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkhDgCSKHxXWCBdfEhE9S4o86PrGy2Xpn0eYbLgu9RgwGR3nih7
	4V8MfR5BQ0Au97q9qVJ53bs=
X-Google-Smtp-Source: AA0mqf5NEk35t6FzvpAbnOFKD5C+mE5aes1fmcvhVliL+d4ghUUI4JSRgyKmlSDm41hUkmtqibbz+g==
X-Received: by 2002:a17:906:a397:b0:7ae:5381:bd02 with SMTP id k23-20020a170906a39700b007ae5381bd02mr20028375ejz.286.1669139124115;
        Tue, 22 Nov 2022 09:45:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:1452:b0:7b2:77f0:9d5 with SMTP id
 q18-20020a170906145200b007b277f009d5ls8317185ejc.5.-pod-prod-gmail; Tue, 22
 Nov 2022 09:45:21 -0800 (PST)
X-Received: by 2002:a17:906:4a8d:b0:78d:a4ca:32df with SMTP id x13-20020a1709064a8d00b0078da4ca32dfmr19888174eju.686.1669139121517;
        Tue, 22 Nov 2022 09:45:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669139121; cv=none;
        d=google.com; s=arc-20160816;
        b=zhhO5rcAMOgcWHfl0h836Ztjk7Jc3Zr1Oj3kgLZi9WGvTKN3dUuduFf/3MrSIyNrgV
         XMvlNE3q/IYSxpm/ZG4Zb6xP3TdUez3jNUo1I8LyZGgohw1yI+8pzRSwdhRmaOqde+n5
         FjGHbCwGvJegaDhnlgrV7XvJIrtByZjFsbTfJe9EzHYYVchLszbt6P9Mbe+Kl9MJ5OdN
         eAzCr1yMcTGX6POc1O885DT8KwHavHmrzhFHIjcLonur8Fh6pSipSsUAGgdaBjS4Vj9c
         SI4P+I/VaBnDKCCL8iTrE0amJsgkyIANU2FFN3e6mnEm600ynwuNZ0ALrhhHXbbchE0Z
         dFjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1kvyvrTAV03KH98x7yl5DC5qgb1BxRhc/RtXT1WiA70=;
        b=GDbbaPQbgfICgAnclY/mZADW6RuOo6ihkxJR4jIsWmTt/LWQ5VjlOWI9c/P3aX10Wf
         zmmZu6ORqzHQ5GOnaP2TBjACSnT6aBTq6/JknKtvRZSpuATx/PhXQpsl8IhMJgJS0/aq
         HFBAAHYWn7K86k+B3vSPKU07Y251piG62nADtvWmM6lv6OMisYRKOfIdj5Jc1ZW6IEG2
         4LN1uv2xgzMKu+hhPLEspMsQ0+6nvQFftNubWlHTykwJHlg/bBmdvIIMF1CaULx/Q9WU
         U6ic/OLBEhrethMewGxHslBMRZmsffMNucu9HmJJgvWIz/APMZ/0KP5csyAdV+AtIIZp
         8uyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=pIuZMaX2;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id dy17-20020a05640231f100b004621a13c733si524664edb.1.2022.11.22.09.45.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 09:45:21 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id z20so20168007edc.13
        for <open-iscsi@googlegroups.com>; Tue, 22 Nov 2022 09:45:21 -0800 (PST)
X-Received: by 2002:a05:6402:4a:b0:461:aa10:cb0c with SMTP id
 f10-20020a056402004a00b00461aa10cb0cmr22258618edu.383.1669139121338; Tue, 22
 Nov 2022 09:45:21 -0800 (PST)
MIME-Version: 1.0
References: <20221122213040.4128105-1-haowenchao@huawei.com> <11003745-2b2d-30cf-bf87-798f5175ae09@oracle.com>
In-Reply-To: <11003745-2b2d-30cf-bf87-798f5175ae09@oracle.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Wed, 23 Nov 2022 01:45:08 +0800
Message-ID: <CAOptpSO23ex6p=AOvjC1h1xc1ZxznLt211hufVrrS8NDVbHjrw@mail.gmail.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Mike Christie <michael.christie@oracle.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, open-iscsi@googlegroups.com, 
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	liuzhiqiang26@huawei.com, linfeilong@huawei.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=pIuZMaX2;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::530
 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;       dmarc=pass
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

On Wed, Nov 23, 2022 at 1:27 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 11/22/22 3:30 PM, Wenchao Hao wrote:
> > There are 3 iscsi session's startup mode which are onboot, manual and
> > automatic. We can boot from iSCSI disks with help of dracut's service
> > in initrd, which would set node's startup mode to onboot, then create
> > iSCSI sessions.
> >
> > While the configure of onboot mode is recorded in file of initrd stage
> > and would be lost when switch to rootfs. Even if we update the startup
> > mode to onboot by hand after switch to rootfs, it is possible that the
> > configure would be covered by another discovery command.
> >
> > root would be mounted on iSCSI disks when boot from iSCSI disks, if the
> > sessions is logged out, the related disks would be removed, which would
> > cause the whole system halt.
>
> The userspace tools check for this already don't they? Running iscsiadm
> on the root disk returns a failure and message about it being in use.
>

It seems we did not check.

> Userspace can check the session's disks and see if they are mounted and
> what they are being used for.

It's hard to check if iSCSI disk is in used. If iSCSI disk is used to
build multipath device mapper,
, and lvm is built on these dm devices, the root is mounted on these
lvm devices, like following:

sde                                       8:64   0   60G  0 disk
=E2=94=94=E2=94=80360014051a174917ce514486bca53b324 253:4    0   60G  0 mpa=
th
  =E2=94=9C=E2=94=80lvm-root                     253:0    0 38.3G  0 lvm   =
/
  =E2=94=9C=E2=94=80lvm-swap                   253:1    0  2.1G  0 lvm   [S=
WAP]
  =E2=94=94=E2=94=80lvm-home                  253:2    0 18.7G  0 lvm   /ho=
me

It's too coupling to check these dm devices.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAOptpSO23ex6p%3DAOvjC1h1xc1ZxznLt211hufVrrS8NDVbHjrw%40mail.gma=
il.com.
