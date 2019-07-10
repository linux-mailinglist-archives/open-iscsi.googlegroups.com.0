Return-Path: <open-iscsi+bncBAABBDXEULUQKGQE2TGEKVQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF556731D
	for <lists+open-iscsi@lfdr.de>; Fri, 12 Jul 2019 18:15:12 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id h184sf4357962oif.16
        for <lists+open-iscsi@lfdr.de>; Fri, 12 Jul 2019 09:15:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562948111; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeCs0gRO3W5yIsi15c39FQE0Xg3q6lrqmC1vuvKMsgV6Te9MZISAgXXaL4esd+3IUq
         rGBufgaV+Mukeap0z2RaUyEc+qBa8S9yWkRzv+TbIm+KhH8O3ME5KPkd3dHAO1rOScWD
         uwAuQLXDy9YDfOHLwm4DOIWyvfmyS61o08A/WfAfAKz94Qo1mAHfPfaaZDt0mPswy42t
         tCuuz6Q/PfR0wR67uHjxV8AYcEOY6eYhL0fFAijqV0b8s3pYa96bPXI0aqFZ/hl4VQ7J
         QdzaVtA2qrVOGKsnXyflKn5ETXyzMXud6YjICXnh/UHlS/CvIhGIXMipweJQHM03Gh5a
         cUmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:mime-version
         :references:in-reply-to:date:cc:to:from:subject:sender
         :dkim-signature;
        bh=h4JFYvvuHrEIJkl7QNUqmZKp6t+WzuUxM7Xbxzd/re4=;
        b=0mHeNFVULil8u87ACXz360HlEupSqbI7tjBeu8+EWmV97nIGQw7S10NHUBaZJIKNSa
         73b8BQ0v3WCAGQb2EDE0P67gvjGMGhLRPfijcD2J9iIiAa85fOfnfB0w4wQmJSyB02z7
         URyov9eUYMO7L5XwqOD6aYF/b9ex7SU+ei10hHeluK2CxN+A9arHM3yF4r6/Gn0E3dKp
         2BCFV8lTtWsrVBBoFfrQQL9Vp5gJ4WZDSoKA6uxAcmv5fohpCxrmTRLggHjFPosOxLm7
         u3jnNDLSJe/yvVdg8BuLVjTn0tsbJZMB6EppNWyYTyn8MVtx+VsuwI+5C9HtX3DNbX/q
         z0Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=jejb@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:in-reply-to:references:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h4JFYvvuHrEIJkl7QNUqmZKp6t+WzuUxM7Xbxzd/re4=;
        b=tLQDd3bmJ1ED4zwV56fa6/TDzgWJxsFayJz5WwC16dRGDzO9ZhuVqe9XFvAmaJOIzR
         +RqoZ1BAma2deHsE81vqGU8Nudvsz8hImiRJB+cUF5CTceD1voLv+sBHWLAKcNsYgAWM
         EOJsMv4ejOhZeKbZ0CmnlHO37oOoQqv9BiefXeJX4HYgkVo6YRapkkhEX48SyXBBgj41
         Tb93tltrQaxZrYet6IEIZjYKkhAdkcXvAbQYqtpVETgjwUXCtSrZjvL69eJwPM0M3vgj
         Mcy19wnx63sdza3xh4Lrpzf/zVq7Mq6KN4nWlA/b3aQWyupQUSh9YJCXHq9h7H3tgPbf
         ryyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:in-reply-to
         :references:mime-version:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=h4JFYvvuHrEIJkl7QNUqmZKp6t+WzuUxM7Xbxzd/re4=;
        b=GAW5lDs6UiS2XpGVd4UHDCuNjby4O5NqTx9k7McD+fib6m1a1e8Ksfi0UY/nPWv575
         LH7U1Yz81cT7kJ1K7UxgdpGfQTg+02JvSQKDs6hqRCcFz7RZLNCoEjwHNn0FxJSRt5DD
         qh7FVx2y3AdvgddPgUlq/b863c4pp/JUCnaaydKixDg4XJnjT4GXCnpPFQSust73Aax8
         qmoZXv2v86R8QWJkZVMWM8TR/C40wycnuKb6OwxkVivHl20MOiQ62bt0jpxrXM0CirC3
         hoS1CJdY7Mu6ZvJt0ss59D5ISsXKcTv0zVYZ7y6DZYfIYDRACGajHI1EY/cuVb0BdWjI
         uZ1Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXuuUv+jaglRsfC2S0IxDkCZbssslkCdN0hcpUkgPvkC8DgxMvI
	+Iy/1wbp3Ew3L7THSNHjvug=
X-Google-Smtp-Source: APXvYqzV2Kai3PN8fExRNrzNtaIJFirYNXXGMMbSGHuprWziFFMUNirEAp8k0B6kWiOdbt8M7EWpIA==
X-Received: by 2002:a9d:d51:: with SMTP id 75mr9244089oti.46.1562948111078;
        Fri, 12 Jul 2019 09:15:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c78e:: with SMTP id x136ls1406654oif.5.gmail; Fri, 12
 Jul 2019 09:15:10 -0700 (PDT)
X-Received: by 2002:aca:d7d5:: with SMTP id o204mr6662631oig.16.1562948110903;
        Fri, 12 Jul 2019 09:15:10 -0700 (PDT)
Received: by 2002:aca:ec83:0:0:0:0:0 with SMTP id k125msoih;
        Wed, 10 Jul 2019 11:52:19 -0700 (PDT)
X-Received: by 2002:a65:57ca:: with SMTP id q10mr40015487pgr.52.1562784738956;
        Wed, 10 Jul 2019 11:52:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562784738; cv=none;
        d=google.com; s=arc-20160816;
        b=MRd+hNs5fM+Ji4nUKWiVpVCeNQLziYZ4Fw37fCmdiWQFqz+mJvXlemtlgzEEkN8big
         i7g3d//tLYU4DpKp0Mtiop57SJH3QxSR0TER8EhcLhIw/9XHdXuDreeLcqlP3dfhyKKV
         HSyOYjDdC7vtMziE50y3J//gA4FPkJnX6JRVptjtqpYYvPGmb/UzH87g+BV+S/IX3Cc7
         wgK2ri8SLtBAhD5QLTQuKVmThhdx8Ok5P43v1pi23jAM0rhR4oITUt3h4buR0FznWkze
         8DqufLnb3T/c4ixI/5QEX/6OuK6BrwL4coJ567iYUl13ZHY8o/jurFyMgoe/si9TWIEv
         g6XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:mime-version:references
         :in-reply-to:date:cc:to:from:subject;
        bh=krkihCiNNZo3aATvq4qhFoSaVkThe8hAdAOeEwkHE5A=;
        b=EBVjML/t+wTDTHav1bwlpSqq9RdRfmcyIhKtIlf0TGjzUM7aBXUUohhd13zLmvGtyI
         A46Q5oSSwH7VGYHrCMbI36PZskMrlGTlthK6PMX4u0XoXIfYRfiOwCEOCHvWr/uHXtE1
         NbspIdR5eeTxXyeXR5x1Vp1TSpArkvSvypdUsnxDbwGTJt43E1U2KyYRI0fCjXzpTaA8
         i2QKt/EHSLLf8oooUTgXVfPqTwmlK1PUd+Xbf3LSMp9OSSPbGvIPDkH+hEhwPO2Cilmq
         Dzidc5JBfJVUEJZj8la8eHzMGJK1IMbp64gBfv4GvExod4SPXT13c9Pm6DSw9dMNCT9r
         UgYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=jejb@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id cm10si137426plb.0.2019.07.10.11.52.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jul 2019 11:52:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x6AIq6Li082930
	for <open-iscsi@googlegroups.com>; Wed, 10 Jul 2019 14:52:18 -0400
Received: from e11.ny.us.ibm.com (e11.ny.us.ibm.com [129.33.205.201])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2tnkw2c40r-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <open-iscsi@googlegroups.com>; Wed, 10 Jul 2019 14:52:18 -0400
Received: from localhost
	by e11.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <open-iscsi@googlegroups.com> from <jejb@linux.ibm.com>;
	Wed, 10 Jul 2019 19:52:17 +0100
Received: from b01cxnp23034.gho.pok.ibm.com (9.57.198.29)
	by e11.ny.us.ibm.com (146.89.104.198) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Wed, 10 Jul 2019 19:52:14 +0100
Received: from b01ledav001.gho.pok.ibm.com (b01ledav001.gho.pok.ibm.com [9.57.199.106])
	by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x6AIqD2M53084638
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 Jul 2019 18:52:13 GMT
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0B5CB28058;
	Wed, 10 Jul 2019 18:52:13 +0000 (GMT)
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C1FD82805A;
	Wed, 10 Jul 2019 18:52:11 +0000 (GMT)
Received: from jarvis.ext.hansenpartnership.com (unknown [9.85.176.217])
	by b01ledav001.gho.pok.ibm.com (Postfix) with ESMTP;
	Wed, 10 Jul 2019 18:52:11 +0000 (GMT)
Subject: Re: [PATCH] Check sk before sendpage
From: James Bottomley <jejb@linux.ibm.com>
To: Lee Duncan <LDuncan@suse.com>, Yang Bin <yang.bin18@zte.com.cn>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        "martin.petersen@oracle.com"
	 <martin.petersen@oracle.com>,
        "cleech@redhat.com" <cleech@redhat.com>,
        "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>,
        "linux-scsi@vger.kernel.org"
	 <linux-scsi@vger.kernel.org>,
        "wang.liang82@zte.com.cn"
	 <wang.liang82@zte.com.cn>,
        "wang.yi59@zte.com.cn" <wang.yi59@zte.com.cn>,
        "xue.zhihong@zte.com.cn"
	 <xue.zhihong@zte.com.cn>
Date: Wed, 10 Jul 2019 11:52:11 -0700
In-Reply-To: <1bc364ff-5bff-47ac-611a-f75c43f4bd1b@suse.com>
References: <1562743809-31133-1-git-send-email-yang.bin18@zte.com.cn>
	 <1bc364ff-5bff-47ac-611a-f75c43f4bd1b@suse.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19071018-2213-0000-0000-000003AC1E9A
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011405; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01230277; UDB=6.00647997; IPR=6.01011546;
 MB=3.00027669; MTD=3.00000008; XFM=3.00000015; UTC=2019-07-10 18:52:16
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19071018-2214-0000-0000-00005F2DE79F
Message-Id: <1562784731.3213.98.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-10_07:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907100214
X-Original-Sender: jejb@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=jejb@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

On Wed, 2019-07-10 at 17:47 +0000, Lee Duncan wrote:
> On 7/10/19 12:30 AM, Yang Bin wrote:
> 
> > From: " Yang Bin "<yang.bin18@zte.com.cn>
> > 
> > Before xmit,iscsi may disconnect just now.
> > So must check connection sock NULL or not,or kernel will crash for
> > accessing NULL pointer.
> > 
> > Signed-off-by: Yang Bin <yang.bin18@zte.com.cn>
> > ---
> >  drivers/scsi/iscsi_tcp.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> > index 7bedbe8..a59c49f 100644
> > --- a/drivers/scsi/iscsi_tcp.c
> > +++ b/drivers/scsi/iscsi_tcp.c
> > @@ -264,6 +264,9 @@ static int iscsi_sw_tcp_xmit_segment(struct
> > iscsi_tcp_conn *tcp_conn,
> >  	unsigned int copied = 0;
> >  	int r = 0;
> >  
> > +	if (!sk)
> > +		return -ENOTCONN;
> > +
> >  	while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
> >  		struct scatterlist *sg;
> >  		unsigned int offset, copy;
> > 
> 
> If the socket can be closed right before iscsi_sw_tcp_xmit_segment()
> is called, can it be called in the middle of sending segments? (In
> which case the check would have to be in the while loop.)

I think the important point is: is this an actual observed bug or just
a theoretical problem?

The reason for asking is this call is controlled directly by the
ISCSI_UEVENT_DESTROY_CONN event sent by the iscsi daemon.  Obviously if
the daemon goes haywire and doesn't shut down the connection before
sending the destroy event, we may get the crash, but I would be
inclined to say fix the daemon.

James

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1562784731.3213.98.camel%40linux.ibm.com.
For more options, visit https://groups.google.com/d/optout.
