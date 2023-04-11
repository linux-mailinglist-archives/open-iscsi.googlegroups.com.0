Return-Path: <open-iscsi+bncBCYMVIPVXQMBBAOC22QQMGQEAUYAQPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1C86DE366
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 20:03:47 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id z141-20020a4a4993000000b00537d702c199sf2981898ooa.15
        for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 11:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681236226; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ldlwDe086NVmj15/1FLGopluBRv+4kZEi01xcyRcRtZSIlFl4VusNcz1yXRXdHRg1
         1z3c/wNwfDZzxJBFFoXorasqCgHu/vYUTrFCyVNHCxygpWHX1GWDOM27qjPBLRc9jDdL
         rNpz3hupKrGh3rWHDKVtSnBlJ3XYOOEsY43YQ/G1/lT+vMY79Fq6RfF58R+VDFyGrGVk
         urUBmBDpTb8b6aW1nj236gOYTOhX4W0NGGW/GfqJhGnoCejXMt8UYzyx2akv0l2Nu7oH
         pIrESp7rpUmohDl4md7wwZlNIwbQpxcM7w405w9dSNJ5jLgh0kgtFg0TufSxbxi63+7H
         tw/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hL0+VjVG64mnpE/GNETg14tOF3V84DQE/rb5h2XowHA=;
        b=lO5jJMqFx22jjTFo1S9kktY6WY9el6DGsu0J6djAzRZeeSSQaBGKPHZzhDNpdWWK4r
         1RWaf6WbDJzfOGtmO8/vaoookzr8H6DIOdYcvxyhTAy1Eug+6D6bSk61O+LVN4kJWJDB
         ap1txvO/LSL+V1zLt/gN1qPjHdTATDDSfAa/Dbojb3NMAZPvO75tdB2tfqCik5nUC0SO
         2dnL/oj1eTRx9ewHBXx90D5hxO6X9TQ7obSFrkn0edCPKzHYk0t6M+BGzsFw+YdCnAq5
         Cv0G8FAun2FN94HqlhwEC/E1Zi1NNN5cmNX8qV025F4hzulRZ5yY4VDN8x8l6bq7nQXA
         3Uwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EMqkQwyS;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681236226;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hL0+VjVG64mnpE/GNETg14tOF3V84DQE/rb5h2XowHA=;
        b=cCJqM8qyBoTGCME2XW4qputGkXlcB/00V4l77h3mXJu/ZndghSPoqJ/Zk5hUx2GYcE
         Cj0rXSqiI9ie43J8/XnE0xo3yoQ8fUqNOpeDTS1X4LKt9foVnv6sx5+Zfs/23d+bxfq7
         saMn752/GK3oUBhItwNw4bPzVBepsu/yPAxCy26r8BZr0MPwQGgNJ8mjTOvXPKQXuurt
         3xdIUuEIj4DtXfAgtcHSKIEQIk26T6T3gWdOtNE2otfmjqx+PEdqHb/Kzamvshmg8EAn
         Vftwr2rwEEbN/U9x8SnfnHckjydBwvEh48En3w94uLRcBtfGhZbjfEsp7vOEvsDJRN1t
         u+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681236226;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=hL0+VjVG64mnpE/GNETg14tOF3V84DQE/rb5h2XowHA=;
        b=cEehA0loVONmUli68+VDDBpGH4CdT9uQl4W/tKdcfvG9EMpEssw41mtNx+LLDoS/Zq
         eHj2ZKNfc84fGydo6lK5Qa9Qh1kG4Gcqk1xbY26U+Rfvl9mZ7Rm+cGyQ2heFBj6LSpOK
         7d4OtCq7VgQHVTfWiT8qHyer5TMzozNwLELokqEp3MvK09uRDm9YuJFdwZovoW04JLlX
         Yxwgso2/4pwK/CGO+mNXQzBg74lsx9pRRFVZXZAIpWA3uSVgdAfFpo2RRVoUHj5TMMYU
         k6nt+oYkWcYwTaEs+XnwY0zZ7Y1jWuOJa2+lkZaw0n3z6eH26nnhDsg0DpaSmS+4aCrc
         vbrA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9ditDf4vti0V7dYB6I+0lBaNT1qPfUGEEeA6qTUEA8LCS4YEgwH
	vj17O5eiLUXzmSBiwh9wLHM=
X-Google-Smtp-Source: AKy350bKyYPYeLc0JE7K+h3pKnHXo8vQiSmbqbht7+CHlKFulScNSVKc5+kjTWHV7hdMYJY/P5JUkQ==
X-Received: by 2002:a05:6870:e392:b0:183:fa09:d20b with SMTP id x18-20020a056870e39200b00183fa09d20bmr6754679oad.5.1681236226059;
        Tue, 11 Apr 2023 11:03:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:f228:b0:16d:c495:95f9 with SMTP id
 t40-20020a056870f22800b0016dc49595f9ls13980398oao.0.-pod-prod-gmail; Tue, 11
 Apr 2023 11:03:44 -0700 (PDT)
X-Received: by 2002:a05:6870:461a:b0:184:1e48:dfd0 with SMTP id z26-20020a056870461a00b001841e48dfd0mr8064908oao.46.1681236224624;
        Tue, 11 Apr 2023 11:03:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681236224; cv=none;
        d=google.com; s=arc-20160816;
        b=eDoMA4MULlyJjTR2WZlxciOvde8Zf1g6s2M+wN8kHur2Ehn1IXDvSU2ci2lqIKuf0r
         b8dk4AcBsC2G1laZhD5rUzbWVgfdVXPDMAfFmYkEV0FqRe0xJbMZV9/AWTAic8njg6uN
         ReRHuRbXmX5GTP5C6iOcXsJSpScndLp8aayRYe2G5fXjD+8jF52tADdfakNdEcHpUWqS
         d0y+i53kpLAeEgBElMFrfYwUJfMj4ZADvIgZ5SMhsmYm2XOKq67BWFC8KZA6IVkfEWMz
         BmFq+3W4Ayghbd/9AKjv7mMYhGpSzRBCWDG6pSnJsNZiGyZ1CCuGRXIB7VXvlbGqRnx6
         w2Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=B3FiBjdgWlBkkLUpYsHnBiWcE8rxx2EUpI7csz5XeCw=;
        b=P9p7zP9hyeU2W95qlKaqMMoWmiFyQ+CznNKzKPUjen5961w746Q7060JiM8Q7kTOph
         50C2g3LkWsffa0B3uZNx8ZRGyfs1OtZx0H8ERqzclwlQSbnnN1IGu8fWHRDaAGwAP60g
         ZIK55ZzC87yChVkOtKOZYxST2oSXcj6Fiv95QzkX7g4rDx3Id4IHKQUFC8DUUbrAW7Ld
         ek/jGLcxgCiP6T0TP3f0aDyim6GmajONff18S1HGNzw/BrcX++P1H6ayH7gN0S6WVC9z
         /Hv/+ywZ/P+e8Zhda8Mt0YrYJxX5vH9Kf2mdwVgAJQCheYTbU5I/iBQ7icDDx7VMzaaN
         i3zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EMqkQwyS;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id x17-20020a056870e39100b0018423c84676si1452006oad.1.2023.04.11.11.03.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 11:03:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-5mtcnPw4Pdm_SWKoi2-NRw-1; Tue, 11 Apr 2023 14:03:40 -0400
X-MC-Unique: 5mtcnPw4Pdm_SWKoi2-NRw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89E8C884EC3;
	Tue, 11 Apr 2023 18:03:39 +0000 (UTC)
Received: from localhost (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD3772166B31;
	Tue, 11 Apr 2023 18:03:38 +0000 (UTC)
Date: Tue, 11 Apr 2023 11:03:37 -0700
From: Chris Leech <cleech@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Cc: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>
Subject: Re: [RFC PATCH 5/9] iscsi: set netns for iscsi_tcp hosts
Message-ID: <20230411180337.GA1234639@localhost>
Mail-Followup-To: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan@suse.com>
 <82eb95ac-2dca-7a7a-116a-2771c4551bab@suse.de>
 <ZDSoH193jm2jOZKA@localhost>
 <b3cad686-fa03-b7a4-01c3-9293a7421582@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b3cad686-fa03-b7a4-01c3-9293a7421582@suse.de>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EMqkQwyS;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
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

On Tue, Apr 11, 2023 at 08:58:54AM +0200, Hannes Reinecke wrote:
> On 4/11/23 02:21, Chris Leech wrote:
> > diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> > index 0c3fd690ecf8..4d8a3d770bed 100644
> > --- a/include/scsi/scsi_transport_iscsi.h
> > +++ b/include/scsi/scsi_transport_iscsi.h
> > @@ -79,6 +79,9 @@ struct iscsi_transport {
> >   	struct iscsi_cls_session *(*create_session) (struct iscsi_endpoint *ep,
> >   					uint16_t cmds_max, uint16_t qdepth,
> >   					uint32_t sn);
> > +	struct iscsi_cls_session *(*create_unbound_session) (struct net *net,
> > +					uint16_t cmds_max, uint16_t qdepth,
> > +					uint32_t sn);
> >   	void (*destroy_session) (struct iscsi_cls_session *session);
> >   	struct iscsi_cls_conn *(*create_conn) (struct iscsi_cls_session *sess,
> >   				uint32_t cid);
> 
> I'm not _that_ happy with these two functions; but can't really see a way
> around it.
> Can't we rename the 'unbound' version to
> 'create_session_ns' or something?

Yes, in my mind I was matching the netlink commands, but those are
create_session and create_bound_session. I got it exactly backwards
with which one had the additional text.

I'm OK with changing to a shorter name, like the one you suggested.

Thanks,
- Chris

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230411180337.GA1234639%40localhost.
