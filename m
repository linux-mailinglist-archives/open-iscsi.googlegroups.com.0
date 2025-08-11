Return-Path: <open-iscsi+bncBCUJ7YGL3QFBB4MU5DCAMGQEQO3DYNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 578AEB20DCA
	for <lists+open-iscsi@lfdr.de>; Mon, 11 Aug 2025 17:21:37 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id d75a77b69052e-4b0a3557d05sf93121241cf.2
        for <lists+open-iscsi@lfdr.de>; Mon, 11 Aug 2025 08:21:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754925684; cv=pass;
        d=google.com; s=arc-20240605;
        b=JGAQncvTFMHph4pBjCmBhSvnFd5izX9abEwxIcNCrpkfguzv9Yed/DM7hynkoetnAa
         jI6r24V5Rzpdfagxec2hEVK6RKGD/h+J+29PXOGfPPSKULVsf3CfqIFpyetSSHY1lQYU
         xlkKtpaO654KKlxPtKyp7v1Qt7bn3faFwH2OoemZkDabdwkF0Yo/FUkU2JdIpX4jNtbF
         vSu+HGfkOU8lpnVrR7Ho5LJSzowcpIU2H0NDYl4dXhEHiwrWwj0IRzL1UoPxofkJRq5G
         Gltp2n4A+j9q+Y92dwi+FPM/ZX2fLpNsotd2kCJuweZTPBSu7OOumtOp6vpURzbeu/kj
         XCDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=9/EIPAgVShgU2zL+fVYk1C2pibSLd6mSX8l3dY3+7ZE=;
        fh=1QJFvLxjtJOpa3Qy1EsLVgLKG0TKiwejey7CWQxeb8M=;
        b=FX3LTz3k2i7z171lsNn6y+XqT+YrVyOnkvWR9BRh5Ndv3wRRXLNDgUaZbGY1P/1CAh
         4YBdoIgslVC0jRbIYRDjkIuK6srMYrFd/0jLnL16iGoZSQLLUugBFP5E0hcwunWyC+Ot
         CcBVlMiSw9d3KO5tQertMcaVgHWkhy0CAwkRMktW88mjOkWKcpCWi34TsJAw6Lu71v8W
         V94VWHeIdTZZHymYwua7namGa7rM/TVQDUWVrX3Z7aIREYNI0t6emvfACSYdtj/to0mq
         wEKNR+z7r5jb/BM4YxQuxwoWFASF82dIGRP+AXAiTkS8ZUEW155UWEw+n0Gk+7q5PSPu
         LLrw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfFIOhQ6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1754925684; x=1755530484; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9/EIPAgVShgU2zL+fVYk1C2pibSLd6mSX8l3dY3+7ZE=;
        b=WQSVfzJfgY2SLarPDkqdTtx408VRg6XjoZiRQXC9WXiZhgnzoDLjZg0N9+W+dAY5+6
         5CRY8W6mT8WXtoaNn/LBhjBSyWPu65dGOgIDb+ny7A8xPb3DpEaeRLVmXf5KAnSKCGdI
         rnMGqzKB7L0t4xVid4h2XIz9ija1bLRS+PjibhF+z5iazQXA2t24Izd1Uf5PmeoncK10
         Z2ZxUyxAPAzzcAPWM0/Iw2CBUYBd738wmevgtLE4SfV+HzERHNk+28d814vmMsUOGNnH
         DAueFK0ST7aZaR98fclQUrDHtNlNubYhEaYbjzMGCwSDSMwObgrtJBD/8SuVVDj3zoav
         J8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754925684; x=1755530484;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9/EIPAgVShgU2zL+fVYk1C2pibSLd6mSX8l3dY3+7ZE=;
        b=BCJQUfOotSDgad01o8KBeXyKYFmDzshYRhU44jM/UIGe/Rhulxe3tLBthQrmePxbO5
         zaL8gjF9tWi4c2YrgoQyXMzV3MCrs3dQUdPBlYiY4CvI0l4pi3TrJv0XMTovKyvrC680
         eA6hPK96vpyUZTMWdV+uLcU8F0EKmMPY7B7Xb7E4JQ/xGRNukMyyUXIDSx6fowyo6xSZ
         VlA4duewf7R5/BIT2gVaZT0oPk6rCn4+JEmmv6YH2pdUvuZp0y5zqaA+VK0eE5MyFvSM
         BQL0soVpYAzfrfwhnOQHXX2bKmu3mBMUTKnhfffHSeMfB8TSvNsqoeZGVZ0NBHoDhlYq
         DJ8w==
X-Forwarded-Encrypted: i=2; AJvYcCUs4Op9nhXjtGQ/8UpNNoM0DTj7XI0x3BoA1a8aJP3T0sZhK4V2PpJ+yrMne/3lKjoK3OrkTA==@lfdr.de
X-Gm-Message-State: AOJu0Yyqp4aVGsPgaiNkmK4NYGbhRm3NqqNL1vxPFbJRsM14yg7g+bIy
	bJhni5lYDwPN8/2raBJfNscbqexRmOvbAkrx1uxCAXkH7I5+WZZvcX9H
X-Google-Smtp-Source: AGHT+IH0gAcPJyXmuOBULNMqE7jcwSpNbxGtg2CzMXUVyeBRAYMAXY8XjgV1ePJcN8yM7SydDHbSrw==
X-Received: by 2002:a05:622a:20b:b0:4ab:37bd:5a8b with SMTP id d75a77b69052e-4b0eb0145d2mr10078391cf.1.1754925684244;
        Mon, 11 Aug 2025 08:21:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZf2vs6FS6cc5s7Tk6mW/87AZVbZAFbXxmcqrFtcZS08gQ==
Received: by 2002:a05:622a:120a:b0:4b0:9935:4640 with SMTP id
 d75a77b69052e-4b0a030c936ls76325841cf.0.-pod-prod-09-us; Mon, 11 Aug 2025
 08:21:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWLwjS3G3dNukWqoMg0zBpwzpGSFXA548MHGaFkOwx3rtL/V8hlnbzSFAOKPXSE40OT+M3rejREfGWW@googlegroups.com
X-Received: by 2002:a05:622a:1c05:b0:4ae:cc2b:77cd with SMTP id d75a77b69052e-4b0aed93921mr173747141cf.59.1754925680341;
        Mon, 11 Aug 2025 08:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754925680; cv=none;
        d=google.com; s=arc-20240605;
        b=jwF7hP5/hIu2PPdMySkOWwkbWPcvU6dTrDEesR6e+BNIYmokydKJn1TPxGOQSsRds9
         Z+spBday7sevsFr7UOP3/sFSoTcQrwc6WBumfbH7P0vagcVWnCjuc8AczZ0/Jwcv3G6u
         9nZCNsHHwNC7nU7XVj5l+o7bQomMSVU88j/QCxlMppPKUnByWJLrFMwTsTNJRAfCf/94
         cD1HLAGOVqM0+TnNAV7mZtEZdjOJJxB2o7xzlaGhvdtYAVySBCG2/EIatrET5cQY0TMa
         dxIbTi3unx4/NOZRgds1+HQorS1YOYz+GGME+NJyJ/N8Vbtrk9QCA6pouCRBNGUFNcmI
         CScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=P7yWKOwtnLCSKchg4p5+4blIKGZDE6Z9MYnqKKsPuAk=;
        fh=zNS9jaTg7RMt4xa5Ug2M093/vN3u8KGOqzUN/MMqzMA=;
        b=N/Kpo9vA6l7mOYfsvDFhwCiKNSDGGfqhi4sj93JP6QwYHYKVEAgfYK1MxWG7rYka2m
         DVn+7hHsfl8xik5uanT9za8f/GCfmRzp7hEIhnVh8HgUL/W2Xi+3SLChW+pR5S6RDKil
         APVS77Qnc9MeSmx6VFIrmIAFrlZEcTukJmfK2pSZ7tSiCIkyzhDMcf56OzM9XCsy7J5n
         LT7QqPY/24xDOvgkaY2kQB+anvC1guUCdG2Wbz2TNGzNZIYjBhlyiqlxIRgtqOtaYZqZ
         BjtB3eQi5HIDje9W6ezQiYM7BYoohYMLTpecA+vkzFrCH53U1sSR0rsJf3M2t+ume9Io
         9YJQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfFIOhQ6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by gmr-mx.google.com with ESMTPS id d75a77b69052e-4b0c5d1f85esi2186481cf.2.2025.08.11.08.21.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 79C30601FA;
	Mon, 11 Aug 2025 15:21:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F8E3C4CEED;
	Mon, 11 Aug 2025 15:21:18 +0000 (UTC)
Date: Mon, 11 Aug 2025 17:21:12 +0200
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
	"chengzhihao1@huawei.com" <chengzhihao1@huawei.com>,
	liumingrui@huawei.com
Subject: Re: CVE-2022-50031: scsi: iscsi: Fix HW conn removal use after free
Message-ID: <2025081122-supernova-ointment-e379@gregkh>
References: <2025061839-CVE-2022-50031-f2bc@gregkh>
 <563d1da8-abd8-48e6-9aab-5a4f13859995@huawei.com>
 <2025070318-slinging-germproof-7da9@gregkh>
 <1b283ae6-d972-4b85-bd4c-bfbb58492914@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1b283ae6-d972-4b85-bd4c-bfbb58492914@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sfFIOhQ6;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as
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

On Thu, Aug 07, 2025 at 09:35:25AM +0800, Li Lingfeng wrote:
> Hi, Greg
>=20
> =E5=9C=A8 2025/7/3 22:33, Greg Kroah-Hartman =E5=86=99=E9=81=93:
> > On Thu, Jul 03, 2025 at 10:16:58PM +0800, Li Lingfeng wrote:
> > > Hi, Greg
> > >=20
> > > =E5=9C=A8 2025/6/18 19:01, Greg Kroah-Hartman =E5=86=99=E9=81=93:
> > > > From: Greg Kroah-Hartman <gregkh@kernel.org>
> > > >=20
> > > > Description
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >=20
> > > > In the Linux kernel, the following vulnerability has been resolved:
> > > >=20
> > > > scsi: iscsi: Fix HW conn removal use after free
> > > >=20
> > > > If qla4xxx doesn't remove the connection before the session, the iS=
CSI
> > > > class tries to remove the connection for it. We were doing a
> > > > iscsi_put_conn() in the iter function which is not needed and will =
result
> > > > in a use after free because iscsi_remove_conn() will free the conne=
ction.
> > > >=20
> > > > The Linux kernel CVE team has assigned CVE-2022-50031 to this issue=
.
> > > >=20
> > > >=20
> > > > Affected and fixed versions
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > > >=20
> > > > 	Fixed in 5.19.4 with commit 0483ffc02ebb953124c592485a5c48ac4ffae5=
fe
> > > > 	Fixed in 6.0 with commit c577ab7ba5f3bf9062db8a58b6e89d4fe370447e
> > > >=20
> > > > Please see https://www.kernel.org for a full list of currently supp=
orted
> > > > kernel versions by the kernel community.
> > > >=20
> > > > Unaffected versions might change over time as fixes are backported =
to
> > > > older supported kernel versions.  The official CVE entry at
> > > > 	https://cve.org/CVERecord/?id=3DCVE-2022-50031
> > > > will be updated if fixes are backported, please check that for the =
most
> > > > up to date information about this issue.
> > > >=20
> > > >=20
> > > > Affected files
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >=20
> > > > The file(s) affected by this issue are:
> > > > 	drivers/scsi/scsi_transport_iscsi.c
> > > >=20
> > > >=20
> > > > Mitigation
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >=20
> > > > The Linux kernel CVE team recommends that you update to the latest
> > > > stable kernel version for this, and many other bugfixes.  Individua=
l
> > > > changes are never tested alone, but rather are part of a larger ker=
nel
> > > > release.  Cherry-picking individual commits is not recommended or
> > > > supported by the Linux kernel community at all.  If however, updati=
ng to
> > > > the latest release is impossible, the individual changes to resolve=
 this
> > > > issue can be found at these commits:
> > > > 	https://git.kernel.org/stable/c/0483ffc02ebb953124c592485a5c48ac4f=
fae5fe
> > > > 	https://git.kernel.org/stable/c/c577ab7ba5f3bf9062db8a58b6e89d4fe3=
70447e
> > > >=20
> > > Based on the details described in the linked discussion, I have conce=
rns
> > > that this patch may not fully resolve the Use-After-Free vulnerabilit=
y.
> > > Instead, it appears the changes could potentially introduce memory le=
ak
> > > issues.
> > Great, then that is a different type of issue, and when fixed, would ge=
t
> > a different CVE assigned to it.
> >=20
> > > Given these concerns, I'd recommend =E2=80=8Brejecting this CVE until=
 we can
> > > thoroughly investigate and validate the complete solution.
> > This fixes a known issue, why would it be rejected as such?  The only
> > way we would reject this is if the upstream commit is reverted because
> > it was deemed to not be correct at all.  If you feel this is the case,
> > please work to get that commit reverted there first.
> Since it has been reverted by commit 7bdc68921481 ("scsi: Revert "scsi:
> iscsi: Fix HW conn removal use after free""), can this CVE be rejected
> now?
>=20
> Links:
> https://lore.kernel.org/all/20250715073926.3529456-1-lilingfeng3@huawei.c=
om/

Yes it can, it just got caught by my "find_reverts" script which I run
every so often:
	CVE-2022-50031 with sha c577ab7ba5f3bf9062db8a58b6e89d4fe370447e has been =
reverted, check to see if this is still a valid CVE

Will go reject it now, thanks!

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
2025081122-supernova-ointment-e379%40gregkh.
