Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBRNJTLBQMGQE3VUN7UQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC55CAF7797
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Jul 2025 16:33:50 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id e9e14a558f8ab-3ddbfe1fc8fsf192198105ab.2
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Jul 2025 07:33:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751553226; cv=pass;
        d=google.com; s=arc-20240605;
        b=TCtNIJFWoMXZkdiwF75X5I24xUxu36X+gG8er8PpY7Pt6MtdpHNOkTYIg8QnY+dkaX
         Cj9jZtmq8Ww4GKWaAUEZo2IH4KVb6jv3/iSqYdJCbrMDKFe6mBptwtTGaotNvnbutyOy
         J9HKJTHme8dCBy8HTMBtRzDrufgC7WKYRMoha2Mb+RqfkBaCRtUBzPQajlTFRkNg/zij
         G7w1yOBhrfFM4HkZRwMoc5IsNOdc2LLTCVnRE0nMMAjnMl8JXn95oRmpeeQRFpjz5IaE
         kK8I7LkHQGQugdDoRrIJXjeja68v/0HapyfSS4Tmz3rn5wEbOUb3YUNDhomgFZNBZyS/
         AT8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ncAl1jTL0a53LMV7Tj2iFOqsDDJGgg025+B5u3fbDuA=;
        fh=uimfhdGSzYFeebouTep8uEXbsJ8AWy9OcCy1E6iHjrw=;
        b=TohYDa5VCwSxOGLS/t5iMCLCPg295dkqQxby6NtdX54EiutrHX3Wkpvcl15WvzJDHj
         ZY8CWys1PWpvY/t6PoJsWeRIxbBTecoytg92qHPkULRX33wj6KIKdrjJlgP6a1cZnNzZ
         gPaCbKVI2ASH0i4YCF80vDOaGrKT9eep7cZ2cxxhUdMjYCFP0zbTuBwoMgycbqogy49U
         jLwSb4dgkmeqivSdPQ0QVQMj0kSUWTQaCIrBFqxvNq59xQGHtgtVAknDq7iAZmT3rwpp
         B7hfekX7xf7F5sPU75uaxHbhuQWsPkwQ50DJnYnK5ZXK1B+ptpG4+e6PTUbWa4osjjrJ
         DV3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NFrRFAVO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1751553226; x=1752158026; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ncAl1jTL0a53LMV7Tj2iFOqsDDJGgg025+B5u3fbDuA=;
        b=hiWyJSN5xSsRE7lwKzkIawwfwVKWZ+B0TeEK+4HlvEbEXaK0dClciN+Ud/4GaHEvvO
         0Hy6Rfoegflp5IgdX6l9r1JewR2VTeVFxTjrC6Y1Ew7B+TLenRtoNjQNn4cVDpRpDhCA
         JbDT+ONQYfJrtyOM/tRHqW9zzDIe13OwKIaJin1HvqldPY4B9iSQ0GP8lLVA4w7Edwbu
         0fVXtFBvaFqoNebCdWLUabH4pEXDMRRntKk04R5d+MQB+jJvitsfrDZFu5bLfUW2nyi+
         hH8pFphHcWLOwC1uuAqTNnrYq4vrZtfYX10Qri43/B/WC9JSMXao3DAA+dpNxXeL9rf4
         hEBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751553226; x=1752158026;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ncAl1jTL0a53LMV7Tj2iFOqsDDJGgg025+B5u3fbDuA=;
        b=EDTQclx8GwoIn/BGETum8bFxns2VfXDJM/adKRfVTWQBTxPCZSdVEigAM0Aks8L7oJ
         3+E1PavcofqQEEb+wNCpE3yVDAynQ/8p8b9j0iWEmDiUnKoPR2MUbeywACvEQbgSqCkk
         uKRNGTcbfWd7R+yLDzw6aPG9iRiKCGueX3BlFJXhPtafWqsrQ4YKYlkF6GbtIU4U5u5k
         xySRosDcv79cDx9riZ0M6cbeN9bHPtCMtUAWWm7ro/zXSdCvBAG1B5Q2PJfpNSqTLp0A
         3UfyFprZftLe9XsW5keFPrN8LR3GFeLvGGFjb7pGx1sbPe6vKYuOKPJi7U4LUDngk6Xm
         twZQ==
X-Forwarded-Encrypted: i=2; AJvYcCXNfFXpk+dlRbxltHNPYir4QJEY1Eb+o+idVKIZwy1nb8b+rSjeUUZtbJa9+67mqYJN+0+SXQ==@lfdr.de
X-Gm-Message-State: AOJu0Yzol/BubmOZ2JswBapcmUd2godajRHkK6nnbwx50WqMoDtk3JTT
	Fc2ECgajSlGvqpLIUq49RO62ceDvcecmKWeAy1rAZKURtMhp9BpPHboq
X-Google-Smtp-Source: AGHT+IEe3htUYFTptI8eZUqsVxdNjX12JF5x1NdKWt3MUEC6t1EheslFPak1f/ejMDIoU6kjqvnwDw==
X-Received: by 2002:a05:6e02:1a6f:b0:3df:3464:ab86 with SMTP id e9e14a558f8ab-3e054973fbemr82796365ab.9.1751553225394;
        Thu, 03 Jul 2025 07:33:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZe+F1LF2NPNRYoHmBUUnA2F2AeHOlUcKCppqzileW27rQ==
Received: by 2002:a05:6e02:4708:b0:3de:12e2:fba4 with SMTP id
 e9e14a558f8ab-3e0d222357als578195ab.0.-pod-prod-02-us; Thu, 03 Jul 2025
 07:33:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU82Q3N+BTzBpJhZ8bqspD+AFAM7sRyW2TmIcKwmMcnElFrvnRqfCZfWQPgiuyaJgTgFH41G2kKsU9L@googlegroups.com
X-Received: by 2002:a05:6602:7518:b0:86c:f893:99da with SMTP id ca18e2360f4ac-876c693025dmr833765339f.0.1751553219939;
        Thu, 03 Jul 2025 07:33:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751553219; cv=none;
        d=google.com; s=arc-20240605;
        b=j19PMwYGhk8G5eDgCzm1WeByMg6oIlZWoTDBDA6LFE9nr13qOv8pK+HNO/lkpzcXh7
         xk5NHxWgn/olXP4O1bC6Zete7m1l1/eUxstqdqEzy7yqvvKLvJMy2fRY6FuQ85n6DU/L
         6ilFDlq/O4/eq+cgVBbm1E5kGvTZ4k2oijK7nuKR/xizmTcq3Swdfi/YrcRX4wsrG3FE
         selFdEb3q//spgQF1KyfI79JuvoaE7UeuhP5BDZ4eN4oFVAiO7qkMESXElX+DeuqrB9P
         2Zb0+xOY2mKdOnMxd40YFvzBAHgR8HNm87bWCiYZBZbaj2Ad6RRjQUDQqJ84QJ7He7ys
         WzZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Ji3rhVag8fcLnvqw0eG7l+xLIeeq1UGJn46b2lH/seQ=;
        fh=Kderfs8if28WxXsUuqMF/NnWX6pdr8gUBFLFdpURysA=;
        b=VHIeKDsurTxMDkJlCl8gvf9SsrslR1rEAUs0CHfaltAUUZCbCydevHXjiyBOPzXK2G
         6ZYWvGh24suL4WUJQ3HWJ3pXiLl0QyEPqnFENuDIHw7G9iNfZQcjjsrt3CIBG34Kz5NK
         NuPCMuThb2OUpQQBX6hFQjth4/26eOeO7hp75iS82E9Z1odH47Thabnp07CuvRp6o/0l
         +WLd9rXjtbMWftVivGkLdEMMKOCi/EjeAi1WxlOhpjaJ16GRJdgAlKZmooevqvP5+d/k
         ORRj3/OcRv8BYGWm05sWwiVEq6hXLHfq/dUdx4AfN0zioQf+HwDT3Cu5k1LbdoKHXI5n
         Lk2w==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NFrRFAVO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by gmr-mx.google.com with ESMTPS id ca18e2360f4ac-876c5b1cf82si20917839f.2.2025.07.03.07.33.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 07:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 51B71A53851;
	Thu,  3 Jul 2025 14:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F9F7C4CEE3;
	Thu,  3 Jul 2025 14:33:38 +0000 (UTC)
Date: Thu, 3 Jul 2025 16:33:34 +0200
From: "'Greg Kroah-Hartman' via open-iscsi" <open-iscsi@googlegroups.com>
To: Li Lingfeng <lilingfeng3@huawei.com>
Cc: cve@kernel.org, linux-kernel@vger.kernel.org,
	linux-cve-announce@vger.kernel.org, lduncan@suse.com,
	cleech@redhat.com, Mike Christie <michael.christie@oracle.com>,
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	yangerkun <yangerkun@huawei.com>,
	"zhangyi (F)" <yi.zhang@huawei.com>, Hou Tao <houtao1@huawei.com>,
	"yukuai (C)" <yukuai3@huawei.com>,
	"chengzhihao1@huawei.com" <chengzhihao1@huawei.com>
Subject: Re: CVE-2022-50031: scsi: iscsi: Fix HW conn removal use after free
Message-ID: <2025070318-slinging-germproof-7da9@gregkh>
References: <2025061839-CVE-2022-50031-f2bc@gregkh>
 <563d1da8-abd8-48e6-9aab-5a4f13859995@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <563d1da8-abd8-48e6-9aab-5a4f13859995@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NFrRFAVO;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Greg Kroah-Hartman <gregkh@kernel.org>
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

On Thu, Jul 03, 2025 at 10:16:58PM +0800, Li Lingfeng wrote:
> Hi, Greg
>=20
> =E5=9C=A8 2025/6/18 19:01, Greg Kroah-Hartman =E5=86=99=E9=81=93:
> > From: Greg Kroah-Hartman <gregkh@kernel.org>
> >=20
> > Description
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > In the Linux kernel, the following vulnerability has been resolved:
> >=20
> > scsi: iscsi: Fix HW conn removal use after free
> >=20
> > If qla4xxx doesn't remove the connection before the session, the iSCSI
> > class tries to remove the connection for it. We were doing a
> > iscsi_put_conn() in the iter function which is not needed and will resu=
lt
> > in a use after free because iscsi_remove_conn() will free the connectio=
n.
> >=20
> > The Linux kernel CVE team has assigned CVE-2022-50031 to this issue.
> >=20
> >=20
> > Affected and fixed versions
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> >=20
> > 	Fixed in 5.19.4 with commit 0483ffc02ebb953124c592485a5c48ac4ffae5fe
> > 	Fixed in 6.0 with commit c577ab7ba5f3bf9062db8a58b6e89d4fe370447e
> >=20
> > Please see https://www.kernel.org for a full list of currently supporte=
d
> > kernel versions by the kernel community.
> >=20
> > Unaffected versions might change over time as fixes are backported to
> > older supported kernel versions.  The official CVE entry at
> > 	https://cve.org/CVERecord/?id=3DCVE-2022-50031
> > will be updated if fixes are backported, please check that for the most
> > up to date information about this issue.
> >=20
> >=20
> > Affected files
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > The file(s) affected by this issue are:
> > 	drivers/scsi/scsi_transport_iscsi.c
> >=20
> >=20
> > Mitigation
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > The Linux kernel CVE team recommends that you update to the latest
> > stable kernel version for this, and many other bugfixes.  Individual
> > changes are never tested alone, but rather are part of a larger kernel
> > release.  Cherry-picking individual commits is not recommended or
> > supported by the Linux kernel community at all.  If however, updating t=
o
> > the latest release is impossible, the individual changes to resolve thi=
s
> > issue can be found at these commits:
> > 	https://git.kernel.org/stable/c/0483ffc02ebb953124c592485a5c48ac4ffae5=
fe
> > 	https://git.kernel.org/stable/c/c577ab7ba5f3bf9062db8a58b6e89d4fe37044=
7e
> >=20
> Based on the details described in the linked discussion, I have concerns
> that this patch may not fully resolve the Use-After-Free vulnerability.
> Instead, it appears the changes could potentially introduce memory leak
> issues.

Great, then that is a different type of issue, and when fixed, would get
a different CVE assigned to it.

> Given these concerns, I'd recommend =E2=80=8Brejecting this CVE until we =
can
> thoroughly investigate and validate the complete solution.

This fixes a known issue, why would it be rejected as such?  The only
way we would reject this is if the upstream commit is reverted because
it was deemed to not be correct at all.  If you feel this is the case,
please work to get that commit reverted there first.

Otherwise just fix the new bug :)

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
2025070318-slinging-germproof-7da9%40gregkh.
