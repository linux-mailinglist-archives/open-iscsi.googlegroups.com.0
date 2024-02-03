Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBQ657KWQMGQEY6LITHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 920A28488ED
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Feb 2024 22:23:18 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id 5614622812f47-3bfc0d620e3sf2010268b6e.0
        for <lists+open-iscsi@lfdr.de>; Sat, 03 Feb 2024 13:23:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706995397; cv=pass;
        d=google.com; s=arc-20160816;
        b=zRTNl7ipgEvr0KaJcr3YezM8hStP6oWQGGdsQ37T10foNORQZqSh7ezDKW/F2elDM0
         sagYsDyvjKyNaxZUNUAnjOkyKsPcOhq7iYYKJdj8R1wzp3TKJQKeuBuSK7q7/A0OXGOm
         /w+QpCJm+yfe+CNms7JbAPTqRBdsmfjEEYCRimnbXdUezWJZKDRX+NL1ZxUVoeBphlX3
         ktjpiNgd6KcO6ik20kdiGBix4kAipLHkm7H8kd7vjUaZGHRmEK/nJeZjYHRHVGB9scKP
         bJBpTlcV/J0Q+64XD0h4AYqFoZPWba46fO5rCrtMysWbjYnVTyeaIGjbJxESkjxVpQO7
         Oh1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EZURUC1Fh3r98caYo3XuVVgsvstpcdtvRq8rW/IfZrk=;
        fh=n7YRAL0KIHpmxaYP2G6Usee0Huh4y9DaWvql/dFznss=;
        b=wiwhKo4r4TJ93it6i5TD/Ti+3jPtyNvRbjl2g/a4Y5i0YoRHMNOJbfy+dKM4HoANjH
         kZeQk0JMz+8nnELMVqiyPPAsKfNh+GqEaehUnllE3ICjzIQEvhZ+OIB6pgi/f8FZZSud
         DGVxNcdj1LIZY+SNZVSOheWBkfiGK2nHhvsbDiojB9kmFoAQJilGIZQ9IEbArIAk87bc
         pU551DQUc1rnaE5bZfpGOXcm4LrRLmlkEE/0Mg6XshsC99+Xox6fTjzXTstjRkfitmgK
         TIIVkgAEvJaHwn5WilQbeISZAnifsj/AaE9M7lYkobuqUQwxZWcIxMw27/0L7HkYsgH5
         iZOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UCOqQ1Eq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1706995397; x=1707600197; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EZURUC1Fh3r98caYo3XuVVgsvstpcdtvRq8rW/IfZrk=;
        b=fBz4DmYZeqAoiaHos0DgzrxFfBzWLrgwalNddgMc3f0GfuLOq2lgoF4nROqgau12Yk
         T6s+nN8yQJTj3yW+QUFbUq//tNYOwXSMfT40gv9a3YrjilhyXYgKBy0tk48WflTC/MKl
         /SdDw+uJb67SoyANaX+L7+/zaQdCBkKNckqsnQMYmsIPAj9wcQznMOLbITmghaNmX+cO
         +wrAVnAsXDGNAD7LRShApO4rR0P1jgxMB/9DcsvSrQ8up1aNJTvUJJOPMp2Jy6eaBybs
         rMMR+/YfkM/B1PpX2mbRA/aoD6RBErtDqVhJEWyn/7kv6MTp7BF3UIQqGz6ririwmtzD
         kIUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706995397; x=1707600197;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EZURUC1Fh3r98caYo3XuVVgsvstpcdtvRq8rW/IfZrk=;
        b=KNfD/aYECCanfml1XkjafMVfGZYvMfCdmf6ypVqc0bugi1sQJx0eiB8CkPAREGjJxg
         /n4lbsNyJfTpkkRa+xBppCwP9wViAgWY/UjGDUDQP9RjeRDJK/9Zg16qRTlXGAyNUFFu
         Pw1lMtrZhxi22QJVKEN7JHGg6LiDAS13SmmsDXslmVmQFcRRm9FxLqpBYEnrjw7mihRV
         q12CkEuTBOZ+8FlsHbOAh+JtvmbTb7AdGNyBdsjIDa73hdNuGAtIFJyXnzaiQ/jqWjd5
         mFhcTZ6/UBwaVDmn5ZvU4AgAR6JPgVt1o3S1VLnPnXfplE6VQQK/euofbj9V+jLF7GeP
         21/A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YzdhHDJh613cuGrVVTgYG4FsJy8+tcMIetZej0/j+l9mED+V7/U
	H/NMr1Y7W8j4d+PYJjzRQSyNJ3PvgHnSufNPP9Ozhnoi9cZbHiX5
X-Google-Smtp-Source: AGHT+IFBDGlqSW/JPm8bEqtdy+e+c9yvLsUgU1qs/OJvbMDu2h7A7IbcF1lgw7EPVm+AIddZnX9v3w==
X-Received: by 2002:a05:6870:414e:b0:218:61af:1c75 with SMTP id r14-20020a056870414e00b0021861af1c75mr3349027oad.37.1706995396799;
        Sat, 03 Feb 2024 13:23:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:b91:b0:219:4d02:200b with SMTP id
 lg17-20020a0568700b9100b002194d02200bls25420oab.2.-pod-prod-03-us; Sat, 03
 Feb 2024 13:23:13 -0800 (PST)
X-Received: by 2002:a05:6870:41d3:b0:210:ab2a:8e0d with SMTP id z19-20020a05687041d300b00210ab2a8e0dmr3953687oac.32.1706995393661;
        Sat, 03 Feb 2024 13:23:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706995393; cv=none;
        d=google.com; s=arc-20160816;
        b=xlSdJZE+Lgpz+tzr92aRZctVV1FHegeO+HuTLrqS9mvH3We4cPJHwRtw3iJPzMfnYb
         gNoTZntu0kgKDEZkROjdcClq+Pvs1DSL3muZCiWmAAY1S9uh2f4bEYSOgYDu8YuTZ3wY
         fXhOQ/WMzRfNAZRBBIvS9chyptbQTxJS9Vn5LNhAJPFS86NeoUFk6JmnnZBMpSMjbi6I
         OOAXpPYs9xgT6PpIOyLx/38cK1dn6LYH+8cw663FAIFefAOsCMrIxjKi2s9AhtGRRtxA
         sN3/ubs5A+quDUwH/nuLvegM+oHZfxTpZ2hyePWBLb+3wAydBmvGeCmj4gGuxfDxwl+H
         5AWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pjCiEVZjzH5d8JCLQAqGm6FxWT97oIBfKy034rYjCp0=;
        fh=n7YRAL0KIHpmxaYP2G6Usee0Huh4y9DaWvql/dFznss=;
        b=IBmbMG4rY0rpL906vfMsESJF11qcAxILnKnTNItjXbeKqF2qde7HDDQ5/WqvaOs4Xh
         LdD98mpXSJrnSdPD2E93HNPElQZmOU7MsveuQKoC/bWPHheNnmhbGAss6ruMQiMNUcpY
         2RQaEw4Uyb6izPVPnqT6Z/yYys0CosfBT1jRV3Tb8m3n4Jn7Q7Mzrwxu1l6Px58N4bfO
         32y/BgoI4y5kWX3dSCkTkoyPLyPyKYTdPL6Xtt6/gKU0TAKW4eqFnwAH7QNEqnk8S1o2
         B+FMvRAmM90Hc48CMqFLJxTChMlf7NgCpeMz9ZpLT2a0sv+D4Wssn64nwMn9YluP7ow3
         M90Q==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UCOqQ1Eq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
X-Forwarded-Encrypted: i=0; AJvYcCWCpSwIdiPb+hxuclLYJHbZ86Mz1Z/V1tI2vzMoHq+LeNfgImxIEGbKfRPVZiVKu3LrYG1PX72EhMm9MoE9TkqlvNxOimWaEWQlvAk=
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id 36-20020a05612216a400b004b2e6e4330asi216622vkl.1.2024.02.03.13.23.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 13:23:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E991E60BC7;
	Sat,  3 Feb 2024 21:23:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84B85C433F1;
	Sat,  3 Feb 2024 21:23:11 +0000 (UTC)
Date: Sat, 3 Feb 2024 13:23:10 -0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: Hannes Reinecke <hare@suse.de>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	open-iscsi@googlegroups.com
Subject: Re: [PATCH 0/3] drivers: scsi: struct bus_type cleanup
Message-ID: <2024020351-groom-underline-d28d@gregkh>
References: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=UCOqQ1Eq;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Sat, Feb 03, 2024 at 03:38:59PM -0300, Ricardo B. Marliere wrote:
> This series is part of an effort to cleanup the users of the driver
> core, as can be seen in many recent patches authored by Greg across the
> tree (e.g. [1]). Specifically, this series is part of the task of
> splitting one of his TODOs [2].
> 
> ---
> [1]: https://lore.kernel.org/lkml/?q=f%3Agregkh%40linuxfoundation.org+s%3A%22make%22+and+s%3A%22const%22
> [2]: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?h=bus_cleanup&id=26105f537f0c60eacfeb430abd2e05d7ddcdd8aa
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Ricardo B. Marliere <ricardo@marliere.net>


Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2024020351-groom-underline-d28d%40gregkh.
