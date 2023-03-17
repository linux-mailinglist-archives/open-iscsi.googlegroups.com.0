Return-Path: <open-iscsi+bncBC755V5RXMKBBXF52OQAMGQEBKFZ4MY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E0F6BF481
	for <lists+open-iscsi@lfdr.de>; Fri, 17 Mar 2023 22:42:55 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id t12-20020a65608c000000b005091ec4f2d4sf1550169pgu.20
        for <lists+open-iscsi@lfdr.de>; Fri, 17 Mar 2023 14:42:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679089374; cv=pass;
        d=google.com; s=arc-20160816;
        b=p3WDimWY7LVEiaRcLeGXrMWkKn+LR2tc8adzzFz6kiVcboZshd9GWSlXZ1OVE7ogdr
         xNrEmCXibLUWACbp+yU1JV+0YmfnkXPd7hjiQkAhiaahVirlrZg0S4uWvOhfuc57w+Ig
         j3Co4eNkFKK9ZUEiEuYMv5D47G/WNKMoS9L4v7UNSAbyLYacev7EaDyjkIEffa8bnDcw
         DRnYIg+Iizc6Erm4qmyUvTyqRza6UhxMetPoeze2BHxwhuStI42W7HGGuhmnHDaSoPe1
         niN058F9Hbz2heDoLdUGPQ3/2z7/BwK+jja9GUpEJU2luwTp2x7qOShZJFF3GTCo+4DJ
         4SHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=OwOKq5s1TQnnwyzHx0YKj4M8eKZADD5w7EP0vPq+JK4=;
        b=s+1qOv+GzFiC4MtgfUy2YpnyXbYFOTlcnn+Ouzo0EjzQpfb/7YwtHfdR6z72IcAImJ
         Sq+N9iEaQRKBfSzCI2T7ggt2rJmPXcqXPei6h1Nc8Ec7eicv9aQvJoC71gzhVxPm9igG
         ve2Dtpvsfr+b+PIV4wAdtmi6k8+iqV45cXXhQeYpmQbke4fqvUwh8bytG9gvFwaAOcKN
         u4gIk6F/FB9j2ZrWVHKbt3Rr4CHHYo7VGN7cyUFbRIDYjPuZ37xDvaF2PRL+MlO6u5Od
         CsDXCFhS3O3IXYSfIOroy48b2of4wBBjy5vbfNK98jo61r8uu0HgQC/kcdhCsCMh7GKQ
         A4jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LMrEWqiv;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679089374;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:content-transfer-encoding:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OwOKq5s1TQnnwyzHx0YKj4M8eKZADD5w7EP0vPq+JK4=;
        b=MKC1kVYfBhvGf5ovKVPTBsgch+jOX0FraGTBrgnLOsijWpf0VIW5+p8wP3OcnugdUD
         rQvGZD6sQ24mF/T7Qw0vtdQ6hikDIvi0qKLIyHuq1Z1H2CiMpYG1uJZxiDgRxGVTXQzD
         xixEFsZkv4nA+y1Gwowx5UJMYIYOXSq+ymtpy7EUJK4W7jfF4N1SFqFZz+jMSNjrIuGO
         RxWF8mVHuJUzegfSBBeg5dwLeDSEvYM63yXALu1znRl04aAOXRjLbbzzRjtx8U1rFvQm
         E8pRIqCesIaNvGIWaZA2O+BTy4gyktWE5E8XgkTPFyMMqyVU8oERkf7D0rf6FIIf1y5i
         cBBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679089374;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:content-transfer-encoding:cc:date:in-reply-to:from
         :subject:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OwOKq5s1TQnnwyzHx0YKj4M8eKZADD5w7EP0vPq+JK4=;
        b=eTA8YbnG+ZY7Cn/cG6oROpMRXgxkEvfLIalGC2gjS+ylpAwceGrKVoYQ9a25sq97Uz
         fUpAJrX+AuOfN9x8OErxS5Bi+yvNw4JumNXNkv4/Zl1bym+mZGs3I6djyiXqEOW88H5a
         EV6qof7hDZuKq4wGoVaZ3b/AJl2ncBqlAYH3vWi/2ZUWisFBhVJjK+cMylynVAVFCT6f
         21rZL7ppAHTS6G31DUtZGpvYKRtDFei3+PJ1U1ZUDGKkOj4SBkvgyQhaOKylzhPNH00J
         c54OPaSk2bIXbtVTx25FRXto5p0SB56LPFO5R6RfmMQIMaSYiSC2k/O4StL7oiGB8vKL
         Dckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679089374;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:content-transfer-encoding:cc:date:in-reply-to:from
         :subject:mime-version:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OwOKq5s1TQnnwyzHx0YKj4M8eKZADD5w7EP0vPq+JK4=;
        b=tsdB1NJq9+Ygr98CkdFAadPtcjFsFQYabpbS8iMA0YnUITZFsW7uEAdqvaXR8Xh2kw
         n0/AgWsNtWuHUFn0115nFkf4kRJ8G3QOWgVgkzaELuF2p5V1ZEsREBAQqmSgYc57bHJ9
         jC4cZtMEdD4ZYKr1Rd5fGTY/9FzNfetU/Kvms27H/T7Hq7bBNvn/nKgKlUNEGMaoeLNG
         ZTyZ1T8pptXmFHHjqt955fIZP5OotfrN1mvmv8Dou3fSWZFgR7V/2LwFhzR7wWk4r274
         s7n66ZJY1aNdF7c+B/xzBP4kXdXJA3VlHpYPsYf7oszW6eRjvUA2Qq53Ypdwcvus3FbQ
         JVJg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVeYboqLBm/R+m9ObbdAYWxZ/YPEejYnpHs3Tk2UswRsLei/6oO
	aQCqnegGFAKxNckPaLcGHrI=
X-Google-Smtp-Source: AK7set9eBuAr2ZwMRV/cT9d6xoKRfc6gL6T6bXnzpD8AnnTIiiBRDIri+QB6/5J4R/HDZHtndGxsbQ==
X-Received: by 2002:a65:6418:0:b0:4fb:9bb1:46fa with SMTP id a24-20020a656418000000b004fb9bb146famr217363pgv.0.1679089373752;
        Fri, 17 Mar 2023 14:42:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:8997:b0:236:6df7:76b0 with SMTP id
 v23-20020a17090a899700b002366df776b0ls633047pjn.2.-pod-canary-gmail; Fri, 17
 Mar 2023 14:42:51 -0700 (PDT)
X-Received: by 2002:a17:90a:1903:b0:233:76bd:9faa with SMTP id 3-20020a17090a190300b0023376bd9faamr9990255pjg.47.1679089371652;
        Fri, 17 Mar 2023 14:42:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679089371; cv=none;
        d=google.com; s=arc-20160816;
        b=vSbRiRSVBb76dQVWnCUwrO350uXZhP02bVRU8FnnbseT7LTL0YfLwaayIXmueqoeXI
         2VsRx5wcuJCgWJWbeXLDjgKKyd/iEYLjL1B2kcKIb/JgEpT9Q6vMok1sdxR1ZoEDgh/O
         3nibpI/qaE8wBZRadTfALlwSEeYVWb/eDZ0jK+fnqAqMN6+2RG2gNmNrmTXXsYB4MDnf
         r2mw23d3XW08nEiN2TRj37DBQtQAEXMIFll2oIKzTD4cmgEBggdxIA8qfD5U66I39bsz
         LXnULC/g/tGz3BltKOMd5F3KotqCSwIdgFy6k0oB/hy6ApGgGUtZ4ptWBXeB31C5prxp
         Cl1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=cFBF3aoCDzJCKnQzjtj3KAbX/g9gllas0cPUtC2AElQ=;
        b=ZjrTa5y44L7hcXB7y5+e/25ACJ2ONPYNxUpwTJeS3BLFQiVQdo9U81T8Ja0no0tzJ8
         tyN6gdNUkM2XRhOuDczadpv3RA/mqqgwtxD0HEg9zwSoX3MmLPpuA9JtUA6Yvz6oOupE
         PcTSd0omgQCTOE2wDTOH+ugbrGxhLgVf8z3sZ0BGPoxDRXWYWz444/vqkshfAMGUXVSC
         MWlsY+RpAr+M+0Glhl58aWSFEFOVD6h4nDY+lwnEi3Ug05kzLIAN1nLNXQsT+yT54vQR
         4qmHyxRpFgBtHGy0KoWhOj2ihwTF1dE+hu46OxN8JLOyHDFtM4B3tUIX6bJTEvhLnTka
         8/RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LMrEWqiv;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id s15-20020a17090a6e4f00b0023f29444ab2si168970pjm.2.2023.03.17.14.42.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:42:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id lr16-20020a17090b4b9000b0023f187954acso6650703pjb.2
        for <open-iscsi@googlegroups.com>; Fri, 17 Mar 2023 14:42:51 -0700 (PDT)
X-Received: by 2002:a17:902:dccb:b0:1a1:b440:3773 with SMTP id t11-20020a170902dccb00b001a1b4403773mr491133pll.27.1679089371242;
        Fri, 17 Mar 2023 14:42:51 -0700 (PDT)
Received: from smtpclient.apple ([2601:1c0:4d7f:138e::3])
        by smtp.gmail.com with ESMTPSA id w15-20020a170902a70f00b0019a8468cbe7sm1963126plq.224.2023.03.17.14.42.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:42:50 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: [RFC PATCH 2/9] iscsi: associate endpoints with a host
From: Lee Duncan <leeman.duncan@gmail.com>
In-Reply-To: <a9f8cc4f-5d60-be5e-d294-c4a9baa16ec4@suse.de>
Date: Fri, 17 Mar 2023 14:42:40 -0700
Cc: linux-scsi@vger.kernel.org,
 open-iscsi <open-iscsi@googlegroups.com>,
 netdev@vger.kernel.org,
 Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <C3D117B2-4FAE-44AB-851B-67C5C98B73CF@gmail.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
 <a9f8cc4f-5d60-be5e-d294-c4a9baa16ec4@suse.de>
To: Hannes Reinecke <hare@suse.de>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=LMrEWqiv;       spf=pass
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

On Mar 14, 2023, at 9:23 AM, Hannes Reinecke <hare@suse.de> wrote:
>=20
> On 2/8/23 18:40, Lee Duncan wrote:
>> From: Lee Duncan <lduncan@suse.com>
>> Right now the iscsi_endpoint is only linked to a connection once that
>> connection has been established.  For net namespace filtering of the
>> sysfs objects, associate an endpoint with the host that it was
>> allocated for when it is created.
>> Signed-off-by: Chris Leech <cleech@redhat.com>
>> Signed-off-by: Lee Duncan <lduncan@suse.com>
>> ---
>>  drivers/infiniband/ulp/iser/iscsi_iser.c | 2 +-
>>  drivers/scsi/be2iscsi/be_iscsi.c         | 2 +-
>>  drivers/scsi/bnx2i/bnx2i_iscsi.c         | 2 +-
>>  drivers/scsi/cxgbi/libcxgbi.c            | 2 +-
>>  drivers/scsi/qedi/qedi_iscsi.c           | 2 +-
>>  drivers/scsi/qla4xxx/ql4_os.c            | 2 +-
>>  drivers/scsi/scsi_transport_iscsi.c      | 3 ++-
>>  include/scsi/scsi_transport_iscsi.h      | 6 +++++-
>>  8 files changed, 13 insertions(+), 8 deletions(-)
>> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniba=
nd/ulp/iser/iscsi_iser.c
>> index 620ae5b2d80d..d38c909b462f 100644
>> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
>> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
>> @@ -802,7 +802,7 @@ static struct iscsi_endpoint *iscsi_iser_ep_connect(=
struct Scsi_Host *shost,
>>  	struct iser_conn *iser_conn;
>>  	struct iscsi_endpoint *ep;
>>  -	ep =3D iscsi_create_endpoint(0);
>> +	ep =3D iscsi_create_endpoint(shost, 0);
>>  	if (!ep)
>>  		return ERR_PTR(-ENOMEM);
>>  diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/b=
e_iscsi.c
>> index 8aeaddc93b16..c893d193f5ef 100644
>> --- a/drivers/scsi/be2iscsi/be_iscsi.c
>> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
>> @@ -1168,7 +1168,7 @@ beiscsi_ep_connect(struct Scsi_Host *shost, struct=
 sockaddr *dst_addr,
>>  		return ERR_PTR(ret);
>>  	}
>>  -	ep =3D iscsi_create_endpoint(sizeof(struct beiscsi_endpoint));
>> +	ep =3D iscsi_create_endpoint(shost, sizeof(struct beiscsi_endpoint));
>>  	if (!ep) {
>>  		ret =3D -ENOMEM;
>>  		return ERR_PTR(ret);
>> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i=
_iscsi.c
>> index a3c800e04a2e..ac63e93e07c6 100644
>> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
>> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
>> @@ -384,7 +384,7 @@ static struct iscsi_endpoint *bnx2i_alloc_ep(struct =
bnx2i_hba *hba)
>>  	struct bnx2i_endpoint *bnx2i_ep;
>>  	u32 ec_div;
>>  -	ep =3D iscsi_create_endpoint(sizeof(*bnx2i_ep));
>> +	ep =3D iscsi_create_endpoint(hba->shost, sizeof(*bnx2i_ep));
>>  	if (!ep) {
>>  		printk(KERN_ERR "bnx2i: Could not allocate ep\n");
>>  		return NULL;
>> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi=
.c
>> index af281e271f88..94edf8e1fb0c 100644
>> --- a/drivers/scsi/cxgbi/libcxgbi.c
>> +++ b/drivers/scsi/cxgbi/libcxgbi.c
>> @@ -2926,7 +2926,7 @@ struct iscsi_endpoint *cxgbi_ep_connect(struct Scs=
i_Host *shost,
>>  		goto release_conn;
>>  	}
>>  -	ep =3D iscsi_create_endpoint(sizeof(*cep));
>> +	ep =3D iscsi_create_endpoint(shost, sizeof(*cep));
>>  	if (!ep) {
>>  		err =3D -ENOMEM;
>>  		pr_info("iscsi alloc ep, OOM.\n");
>> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_isc=
si.c
>> index 31ec429104e2..4baf1dbb8e92 100644
>> --- a/drivers/scsi/qedi/qedi_iscsi.c
>> +++ b/drivers/scsi/qedi/qedi_iscsi.c
>> @@ -931,7 +931,7 @@ qedi_ep_connect(struct Scsi_Host *shost, struct sock=
addr *dst_addr,
>>  		return ERR_PTR(-ENXIO);
>>  	}
>>  -	ep =3D iscsi_create_endpoint(sizeof(struct qedi_endpoint));
>> +	ep =3D iscsi_create_endpoint(shost, sizeof(struct qedi_endpoint));
>>  	if (!ep) {
>>  		QEDI_ERR(&qedi->dbg_ctx, "endpoint create fail\n");
>>  		ret =3D -ENOMEM;
>> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os=
.c
>> index 005502125b27..acebf9c92c04 100644
>> --- a/drivers/scsi/qla4xxx/ql4_os.c
>> +++ b/drivers/scsi/qla4xxx/ql4_os.c
>> @@ -1717,7 +1717,7 @@ qla4xxx_ep_connect(struct Scsi_Host *shost, struct=
 sockaddr *dst_addr,
>>  	}
>>    	ha =3D iscsi_host_priv(shost);
>> -	ep =3D iscsi_create_endpoint(sizeof(struct qla_endpoint));
>> +	ep =3D iscsi_create_endpoint(shost, sizeof(struct qla_endpoint));
>>  	if (!ep) {
>>  		ret =3D -ENOMEM;
>>  		return ERR_PTR(ret);
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tra=
nsport_iscsi.c
>> index be69cea9c6f8..86bafdb862a5 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -204,7 +204,7 @@ static struct attribute_group iscsi_endpoint_group =
=3D {
>>  };
>>    struct iscsi_endpoint *
>> -iscsi_create_endpoint(int dd_size)
>> +iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
>>  {
>>  	struct iscsi_endpoint *ep;
>>  	int err, id;
>> @@ -230,6 +230,7 @@ iscsi_create_endpoint(int dd_size)
>>    	ep->id =3D id;
>>  	ep->dev.class =3D &iscsi_endpoint_class;
>> +	ep->dev.parent =3D &shost->shost_gendev;
>>  	dev_set_name(&ep->dev, "ep-%d", id);
>>  	err =3D device_register(&ep->dev);
>>          if (err)
>=20
> Umm... doesn't this change the sysfs layout?
> IE won't the endpoint node be moved under the Scsi_Host directory?
>=20
> But even if it does: do we care?
>=20
>=20
> Cheers,
>=20
> Hannes
>=20

No, it=E2=80=99s still /sys/class/iscsi_endpoint, since the dev.class hasn=
=E2=80=99t changed.

=E2=80=94=20
Lee

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/C3D117B2-4FAE-44AB-851B-67C5C98B73CF%40gmail.com.
