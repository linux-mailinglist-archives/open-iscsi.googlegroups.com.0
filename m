Return-Path: <open-iscsi+bncBCYMVIPVXQMBBYMLQCTAMGQEG6GKN7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id F108F762010
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 19:27:00 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 41be03b00d2f7-56357814339sf2866770a12.3
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 10:27:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690306019; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jwu6d172zK9GYiCFoPE0DeuNLWGKMF8fPt2y+vxCJcq7B5om4TfJbc7rPbHyOrQ+2Z
         hWUuiJvwXwhizLtmI8PqJAW6+Xa48yMU9OtJLSGmPSjaJtEi834EFKNVx135ZRRnycba
         WbNWzIWZIOmjvXzqeg1M5JRB+Mz6y39oibJew6bKebgZNbWgo+YBF4qkqoJ+NQc0L755
         drRi3ItGdDU/x7I2ZWyfloxN9TOw5lx9Yg7MSrkLCTxb+ZPO14yyba/5FbbANnB2pMSo
         mUseXkeKnq8x1CcQsfgY6nfDcalJLOuF0P7XIeaeisy0BklwU0oB5HX/Z3RDwq/0RhJa
         Zdcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UG5O+F2VpFIXyqNqF+NJmYsrlaunMhzdvY+UzIgJgNQ=;
        fh=8nBWZbT6HMHubtHHd8IzkZgCrQUggc0mHHXc9tiMbbQ=;
        b=oZ7mBlCmAZYIP/fEgEdvBe1fCE2VmNZr0PhkICfl0sSuuA2kaZ0Sw1s0ESSnuy1Eud
         uk697SyPst3R0OIeGD6HpIxX6KvqJ+g+Ph/AVuxWDz6mPMGAEzSCPnqnCpWYib5+l9ZE
         +yw9CVTsLphAmm9lhPHKIKARGFOQbVzzu+tsgFIVyTou3GBoWe5RYe58LG+fpvlFDvoX
         GDRhCsYHIHRIFsAqTESNxm4Oa/TQyofZgbNOwUvwtbcvS6HCH+D5tkJuWbkj29FtaFBu
         52Y/ZdZwITVlJuqHrljNa61ls64Ya7xeRweXYFOlQDZx4vPXCYNeHZYa7eJIYOWwc7Sj
         /mPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CiPNPQJ1;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690306019; x=1690910819;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UG5O+F2VpFIXyqNqF+NJmYsrlaunMhzdvY+UzIgJgNQ=;
        b=QMzMegAxlGkIDe8Whc5IbdWM83vQ81T6jQvAWxKmMJ3MEIVkAnJ/YCaDMmQuw8V+KF
         sQMEAghzHavMVcz2D4HfpUTuLHGLl/Q7WomNZZ645bu9c+vsiV5KllEN03Kd1Zs2IdbZ
         V5PzuGZhhdZEhClYQWQths7V8PZCQfADV8W5OgiIq/n7o2V4XAw72/DZl20wXGtGOGf+
         tw+uQ7k6eUSGrrdasbORtzmrhRxTc7hrRuztmPo7VnnU5tMJzFP1C2ra1zsprO/WeUV+
         1gsWLoZawqvqOnNR1M2Jt+6OC1P3H2UsEqFdfFSdBpZ2QlHpwGyDekZG6fnpimHrQlAw
         JSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690306019; x=1690910819;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UG5O+F2VpFIXyqNqF+NJmYsrlaunMhzdvY+UzIgJgNQ=;
        b=YcwuehZGOyBenpb9qvto8auHvQqGEiL142lH58awlsVrvmZArKmTDLsrnuqDNSQd88
         S1ShR6KpFtJ9cw1ze9vK+r4xPFB+CMYhcuhT0bKul7If3H88j19e06M2kSpHRJMT5e2D
         +KY1SM9hUzhnBokQmFVswgbpmxbBqPz7J7TBPUjt9mbDLGKpVpdfhtvX8X8eLmsP378W
         fT8cqqAArY7I/WBpZkKzIaiHW89AjLrNvb2NasQp9EjzAffJUHaFteDyMgJuQCpgaeIw
         GItvZdFEwPKQbJyoYS0Y7fw06M3OHQSuVMGrNxNAArvzrlRUP5+viSCnWrzZgWwMrFWv
         BFFg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYKt5FLR575mC4sDfIATfRoD7vk7xssk7MkTrQRQOJKvYtifoMO
	YWxhdLrLFxr6vnk2O60xtMg=
X-Google-Smtp-Source: APBJJlGyetZRkV8QXfwpu/olUJNo2PqiU+DnkZTXC5/nHCwYtCLIdVxmRr9uKqfLfs4am/BpbTt7Tw==
X-Received: by 2002:a05:6a20:9389:b0:12f:eb74:72b6 with SMTP id x9-20020a056a20938900b0012feb7472b6mr11868172pzh.60.1690306019017;
        Tue, 25 Jul 2023 10:26:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:941b:0:b0:663:923c:952f with SMTP id x27-20020aa7941b000000b00663923c952fls3215751pfo.1.-pod-prod-07-us;
 Tue, 25 Jul 2023 10:26:56 -0700 (PDT)
X-Received: by 2002:a17:902:b710:b0:1bb:79b4:d45e with SMTP id d16-20020a170902b71000b001bb79b4d45emr6456542pls.69.1690306016663;
        Tue, 25 Jul 2023 10:26:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690306016; cv=none;
        d=google.com; s=arc-20160816;
        b=FdKXi+iq60gxGFtQmFFNvDFsjPBp6SqNGTpjyqUU+Q3GEj5NqecuBce/oBp3rfIOLP
         PeFYvJEFJN2rRsBditmwwULfPFCv2SkB89pA0tPHnIB7GlybNPbKtwRjwyLuVBpatWbX
         Zsd6Iq7iEBD3BuspAxjCc018exKBqZuDcKFBvlIyzyxbRQcSy6CRKBG5HO3jhVKIr1mQ
         4oHp/DUdmpyhUNCDGGRoPbVPpzlOaFTBGE8hgg3/M4Yehg+k54KShZyZz4QbemGuYvfm
         IeM0/KyJUabQL1g7jy1Wav7RDr1BYlVJ461gOondRtPUu/rVXMhgH+mFD4iOmBP7WK/g
         MG2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xbds6RC4+zmMm8S6mNyiiv6mc/Jhy2JAc61bU2x/U1k=;
        fh=8nBWZbT6HMHubtHHd8IzkZgCrQUggc0mHHXc9tiMbbQ=;
        b=dEhx2P/U/6towgT1ZW+XARRpQV1vlMg9SeMhlq/NCWf2yEzpSykOoiWDZgV5zLoPpv
         z3ySvt3ESWlXVJXFs2mms9BiZUFmqKQzg7DOU+9lWMR1FiSrREFpR3qfSNrsUhMk9k9m
         e1IjqFY9QUjiodyb3iz1We2G00+WJ6FKwXvH22U9vE4TrI1gU4WL1OGsPeCTLUiwAW3U
         5/Tg488/UtNbbaT/hKHxPcUbbxAvMzuRAy+IU1bTNuxAMBrBSP3i+PqWS5cBHo5BE4Eu
         7qjDhAnNJNWOGvVaDCkvJpx4FXzR6VZp24cXHm/nFXF5hS1DygO68+uWqiwlUNfQlXRB
         j+jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CiPNPQJ1;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id e17-20020a170902e0d100b001bbc0f68a5csi91732pla.5.2023.07.25.10.26.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 10:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-624-Eke6rSJ1N4W5UsDSgFaWyQ-1; Tue, 25 Jul 2023 13:26:51 -0400
X-MC-Unique: Eke6rSJ1N4W5UsDSgFaWyQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43AD9858F1E;
	Tue, 25 Jul 2023 17:26:50 +0000 (UTC)
Received: from rhel-developer-toolbox-latest (unknown [10.2.16.250])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BFB9C2C856;
	Tue, 25 Jul 2023 17:26:49 +0000 (UTC)
Date: Tue, 25 Jul 2023 10:26:47 -0700
From: Chris Leech <cleech@redhat.com>
To: Lin Ma <linma@zju.edu.cn>
Cc: lduncan@suse.com, michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, vikas.chaudhary@qlogic.com,
	JBottomley@parallels.com, mchan@broadcom.com, benli@broadcom.com,
	ogerlitz@voltaire.com, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] scsi: iscsi: Add strlen check in
 iscsi_if_set_{host}_param
Message-ID: <ZMAF1+P3blgBZ+/m@rhel-developer-toolbox-latest>
References: <20230725024545.428519-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230725024545.428519-1-linma@zju.edu.cn>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CiPNPQJ1;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
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

On Tue, Jul 25, 2023 at 10:45:45AM +0800, Lin Ma wrote:
> The function iscsi_if_set_param and iscsi_if_set_host_param converts
> nlattr payload to type char* and then call C string handling functions
> like sscanf and kstrdup.
> 
>   char *data = (char*)ev + sizeof(*ev);
>   ...
>   sscanf(data, "%d", &value);
> 
> However, since the nlattr is provided by the user-space program and
> the nlmsg skb is allocated with GFP_KERNEL instead of GFP_ZERO flag
> (see netlink_alloc_large_skb in netlink_sendmsg), the dirty data
> remained in the heap can cause OOB read for those string handling
> functions.

Reviewed-by: Chris Leech <cleech@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZMAF1%2BP3blgBZ%2B/m%40rhel-developer-toolbox-latest.
