Return-Path: <open-iscsi+bncBAABB4WD5D3QKGQEJFCCZFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-f185.google.com (mail-oi1-f185.google.com [209.85.167.185])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EF120D057
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 19:16:35 +0200 (CEST)
Received: by mail-oi1-f185.google.com with SMTP id s64sf6682768oih.20
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 10:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593450994; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJFLPx5Nx6DuUh7thrvlofBo4Zg5VPd8gQOqAhECH/hdKuMlRsLcA3IeF2ZKceF2h8
         EkBg0LeGHMd+PZY+x3d46q9uf2ICordJeeTagm2iO9WLfhC3fKOJfWz5M8AhngGLxkHK
         HxoC8eUHkOCPa2AbdAbFVPCLO2FAgAQNpoX6+TMNBGosoEQZXgHqThvExXWvefuGQubr
         xvMvmkP48JX4Wo1B9yOyeMrzVls2SPYsiNIBGGfX9zp1u0cTyTd4Lv7RbeBoBGX+jdtU
         0cAi0TblpIXaBB41jQO7EiZESO4Bi5iLpgc7lZTLTucpj2K8YT3bN1OrvCBMvMu2Z6ce
         sXHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=tMbMxTGA+hTdn9v+EpJ6Azo9BnoMiEuJj42RN7F9xf0=;
        b=R5aUXaNkcK1g3+IUzBGBjgCi9ENOD1IoTtWOWwh0nDRXhqbWCohh2WowMKuPCKW2JD
         3IJR/bZ4O0sWJA9b6J1q1ZgmSTLGtvbVGofIb2joUXEY/jw+mnYwGvNshKSw/JBCzsj2
         cFHui0kLmIRBfQPzPQMr8h+D3IzQkxIMvYfZK4mkWsyKDNpVKlUacpmJGuslV1nMEctp
         BCv83FcVKs65k5J/s6NLJn+n02ZFCtoKrXkuq5BevVQT1gItXkBcupGJ8RCwG4x5Mqu9
         8QWuD54q9bSZefBDXLEwSNGYxuuGDmZ+gKkcwVhZFtFECFiXAGZiIntFa2fKPtrEBo9p
         K+dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:sender:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tMbMxTGA+hTdn9v+EpJ6Azo9BnoMiEuJj42RN7F9xf0=;
        b=kUtbEkwfbhkTFCZPY5WshOuqapvSZ4d+/GTXNPdsPPVBNlKKidec6GDwbf9/lSsSfn
         q1q/3DkQlAQAK7ARYcdQZOCa0lLl51+33JQ9mCZjGO+QT5mZiUkMAh7j1V66qEySo+to
         fdfRdAMhzgqC4CiSyFzMW6qTFjyc63A72JTt+Q+724Ur0nqzZSnIx5lS++connxP4far
         RAghiWl10wMDJTTOzgw1/Gosjmk8TWP5hV3mHAvZmgDBUFlp0BoolNw02Wcq01Pn/sbR
         FZaZOC7worRkclOKAnauKctWT83YcNlebou+WCQdA+5PgEGwl4ogDBVxUCvdaBPY9EP4
         YvKQ==
X-Gm-Message-State: AOAM5325CcOHwDlAqA0oAJZv/yqfUs0BTumIoxEKa783nDCS9/sohA6J
	kKs0F45MyNcVgpI1tfQbo5I=
X-Google-Smtp-Source: ABdhPJw4kaD7JjAoIeAqsawPzsjCpniBP0zx3YSzJJREW+37MerxM7bQoBoytdSilr049Yg027uf/A==
X-Received: by 2002:a05:6808:3ab:: with SMTP id n11mr7707348oie.121.1593450994576;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:cc89:: with SMTP id c131ls1459586oig.3.gmail; Mon, 29
 Jun 2020 10:16:34 -0700 (PDT)
X-Received: by 2002:a54:4e9a:: with SMTP id c26mr12982818oiy.62.1593450994307;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
Received: by 2002:a05:6808:68d:b029:ba:f73:eca0 with SMTP id k13-20020a056808068db02900ba0f73eca0msoig;
        Tue, 23 Jun 2020 03:44:39 -0700 (PDT)
X-Received: by 2002:a63:920b:: with SMTP id o11mr8619342pgd.419.1592909079115;
        Tue, 23 Jun 2020 03:44:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592909079; cv=none;
        d=google.com; s=arc-20160816;
        b=NsVPLNlG5uWAgVBSFnMjMU/qKncL3Wzz6wNZ5PTZ0YO8Lrvxa04i5t7js8iZ+bBXOX
         u35JlMaeI7Txxgu5OoGrzsXuA8w7MCvauIgGkVr2+44Ov36e68sFK7HYVUSuyXBCGgqc
         uIBM3bIOCVjy1qUXdFqgQhFXl4jnm2KlUMr/kXJ+tzFZMG3GEBPHvcPVV5KFFIGfnEd1
         O/VEElv9BEQfrpV+B7lnOkkjxDGmWKERUSsAFJu5yNwb7xAQ8e2mO+ykcFz+7cDRJPg1
         0CsflpLK1cTHLPlOJYXSbfVd8PTZw2I8z6FxhyRWkFRJIymSXS5LgIdesclxr/wgsPgJ
         bulw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=dfBN/81CbKgO+ImSnt9bP3hiRFu9Ui+I7w3GQeYD0bA=;
        b=0bQErAmul/9yilwXiZFWnCUlsVxtJZw1TX+YAp37HNlbWfKPND8meHmhLFWmlWRTXL
         DLKKRYW990BREJiyJBprjze4Gipz6ZVtSP6vN8rflMyJQHsnCrwVErd+QLShEWb9m2LS
         rnLgU7Vy0ERdreYumOk03YR2CLS6L1MGyNVHmTavYuaFeN2gNpk35VapayMtkjobzp+C
         ITebHRF5QtxiMeK5/+K24AI1MM1dUTq+4sjne/H7ouuOFbWkQXSO1D6ALgFDKXUvzpkz
         XNuZwy5I30JIpen2XouTP0PviKfiZKpI3bWuz2EtswZbVVO90sWau8UcNIv2YSqDHGzS
         FEiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id n68si558456pgn.1.2020.06.23.03.44.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 03:44:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 05NAXAXJ098070;
	Tue, 23 Jun 2020 06:44:38 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com [149.81.74.107])
	by mx0b-001b2d01.pphosted.com with ESMTP id 31ufmyruwj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Jun 2020 06:44:38 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
	by ppma03fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05NAfv4U011201;
	Tue, 23 Jun 2020 10:44:36 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma03fra.de.ibm.com with ESMTP id 31sa381yp8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Jun 2020 10:44:36 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 05NAiX6H60293182
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 23 Jun 2020 10:44:33 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 40494AE05F;
	Tue, 23 Jun 2020 10:44:33 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2C7F7AE055;
	Tue, 23 Jun 2020 10:44:33 +0000 (GMT)
Received: from t480-pf1aa2c2 (unknown [9.145.42.240])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue, 23 Jun 2020 10:44:33 +0000 (GMT)
Received: from bblock by t480-pf1aa2c2 with local (Exim 4.94)
	(envelope-from <bblock@linux.ibm.com>)
	id 1jngPn-002vYU-Vw; Tue, 23 Jun 2020 12:44:32 +0200
Date: Tue, 23 Jun 2020 12:44:31 +0200
From: Benjamin Block <bblock@linux.ibm.com>
To: Mike Christie <michael.christie@oracle.com>
Cc: Bob Liu <bob.liu@oracle.com>, linux-kernel@vger.kernel.org, tj@kernel.org,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com, maier@linux.ibm.com
Subject: Re: [PATCH 2/2] scsi: register sysfs for scsi/iscsi workqueues
Message-ID: <20200623104431.GE9340@t480-pf1aa2c2>
References: <20200611100717.27506-1-bob.liu@oracle.com>
 <20200611100717.27506-2-bob.liu@oracle.com>
 <cf9ae940-87b2-c8a1-3dba-4d2b57ebe9dd@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cf9ae940-87b2-c8a1-3dba-4d2b57ebe9dd@oracle.com>
Sender: Benjamin Block <bblock@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-23_05:2020-06-23,2020-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1011
 cotscore=-2147483648 mlxlogscore=999 adultscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006230079
X-Original-Sender: bblock@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=bblock@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Mon, Jun 22, 2020 at 10:40:09AM -0500, Mike Christie wrote:
> On 6/11/20 5:07 AM, Bob Liu wrote:
> > This patch enable setting cpu affinity through "cpumask" for below
> > scsi/iscsi workqueues, so as to get better isolation.
> > - scsi_wq_*
> > - scsi_tmf_*
> > - iscsi_q_xx
> > - iscsi_eh
> >=20
> > Signed-off-by: Bob Liu <bob.liu@oracle.com>
> > ---
> >   drivers/scsi/hosts.c                | 4 ++--
> >   drivers/scsi/libiscsi.c             | 2 +-
> >   drivers/scsi/scsi_transport_iscsi.c | 2 +-
> >   3 files changed, 4 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
> > index 1d669e4..4b9f80d 100644
> > --- a/drivers/scsi/hosts.c
> > +++ b/drivers/scsi/hosts.c
> > @@ -272,7 +272,7 @@ int scsi_add_host_with_dma(struct Scsi_Host *shost,=
 struct device *dev,
> >   	if (shost->transportt->create_work_queue) {
> >   		snprintf(shost->work_q_name, sizeof(shost->work_q_name),
> >   			 "scsi_wq_%d", shost->host_no);
> > -		shost->work_q =3D create_singlethread_workqueue(
> > +		shost->work_q =3D create_singlethread_workqueue_noorder(
> >   					shost->work_q_name);
> >   		if (!shost->work_q) {
> >   			error =3D -EINVAL;
>=20
> This patch seems ok for the iscsi, fc, tmf, and non transport class scan
> uses. We are either heavy handed with flushes or did not need ordering.
>=20
> I don't know about the zfcp use though, so I cc'd  the developers listed =
as
> maintainers. It looks like for zfcp we can do:

Thx for the notice.

>=20
> zfcp_scsi_rport_register->fc_remote_port_add->fc_remote_port_create->scsi=
_queue_work
> to scan the scsi target on the rport.
>=20
> and then zfcp_scsi_rport_register can call zfcp_unit_queue_scsi_scan->
> scsi_queue_work which will scan for a specific lun.
>=20
> It looks ok if those are not ordered, but I would get their review to mak=
e
> sure.

I am not aware of any temporal requirements of those LUN-scans, so I
think making them not explicitly ordered shouldn't hurt us.

The target scan itself is protected again by `shost->scan_mutex`.. so
all fine I think.

--=20
Best Regards, Benjamin Block  / Linux on IBM Z Kernel Development / IBM Sys=
tems
IBM Deutschland Research & Development GmbH    /    https://www.ibm.com/pri=
vacy
Vorsitz. AufsR.: Gregor Pillen         /        Gesch=C3=A4ftsf=C3=BChrung:=
 Dirk Wittkopp
Sitz der Gesellschaft: B=C3=B6blingen / Registergericht: AmtsG Stuttgart, H=
RB 243294

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/20200623104431.GE9340%40t480-pf1aa2c2.
