Return-Path: <open-iscsi+bncBC4KT6XCR4NRB47KXDYAKGQEX6BXLJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A028612E9E1
	for <lists+open-iscsi@lfdr.de>; Thu,  2 Jan 2020 19:24:52 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id n9sf34648215ilm.19
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jan 2020 10:24:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577989491; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMj/vNaCLrplylCS9lu4wakFJptEYW71al7XvfGEksxsbSSGapU6dws7NsCTidU6Ps
         k7EGzcp7cVvk9Tvhdw9sjDutOFVQ9tL4L8KQhoyOcbOVILqKkaPxeTb2YkZ64KXIypLF
         f8jb4XeV+cnfeENCEpO7tbIBRob1TEPip1odW0QbULijRc+Z/cHvDTs/xl1cFyeL2nFo
         TIBtNeNnK3acCZCH+ysxKlsXsLmKUNxM/dsjzVtMaNUT3hDj8nJiifdbk+MQ73aDnb63
         RGuIXpTrh/7Gm4Ph+8JAKuBmo9WdDW0A51NODgNnts+6eN2PXVJHBfdH+ufWLRH0mPcu
         pQ2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Vti8yGOtptMRqFXSCko73kJqvL8MkvMxvRo+U4LgJjc=;
        b=PGXD47BtfVLdjU708AGgf1ghw8FQlwiO+8ISVy3ftDdLWCB8ukytYF1lK2SSmkcpHX
         UrwJjZFhtZKoFEyeXzse80fTrlzFA6Pfz3Fj3T7xVayVQOrads/nCfPe/RdxsjUibtEV
         3JnuCl074c/MuZc5OaYezZu66/sBGtERirULlIpKJDrbcd7bjCu5cMcXsywhjZ7ktMtJ
         wDPplnLm/ILGtPpWTvwm4sK/7nvf8danBYz0Mgr9/RzPAJJ3oOdSztaXka4IrGRdqMLL
         EbZlLCuQsN+7+D9HtLksxKuZdzSv3huKmLc+Kk7qQjM/iXvU3Iiyy7dmeXdV5K2EErGR
         Uohg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TjpKpKJm;
       spf=pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=khazhy@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vti8yGOtptMRqFXSCko73kJqvL8MkvMxvRo+U4LgJjc=;
        b=M4yp4+OThQlVcfF0ibblHDdt/UlGXKFRpwwKh+MhJQzS+MX4tAYm5YS0oW1J73wbB7
         ui+TWZf9Yk4VmwYV2s+GXp3O7ZhzDiMhJbY3rZeBHVt8BEAUlJpErFEBNNWtk2e7BGyN
         A8NYC6YZqGv/TQKSzIy87j3Kkt+NnhpmJDdcR0TSo7hPb2KC0cnk46d6gv1JdmQsOOd4
         3OMPyHs+8szfVbRioMQ6eysfUJHYu31B/s0fiovj8beC2Gvrz/ZmtSnga6WYDBwAxlkx
         yK+dmoQgMDD4okBjWgP/jXlb8p9Q9eApA5wwdVlrilVo9gTP1CcTpDFuCa6s6lD4lXxZ
         Wnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vti8yGOtptMRqFXSCko73kJqvL8MkvMxvRo+U4LgJjc=;
        b=SgI3oDu0ghVQ1r1GEyIQx3uL/xy27weKs5Qi4MkVfz+NMNWD25daiSx/i93Uk/qNGI
         HYH/bpuPMOd4tg4+WZvskLocvJSi4QSieAYxHo39KinrFZqabASk+qt7+6XJcM3am0LW
         gPRSOJCR43+AIJ0horoctcosKwogV9f0Bflk6jdO7/I6mcxkruINHkEDpz8PWaiPYjTU
         hxX6GQ+VliHVQMRi/CEDUAQnyGOcRhHAPfw60VlspOYmYQUhYFWHQ/UMiGNuOwyuwvgM
         xvUXKLFOTl6PuVHncswDlhyiVUsgvah7UrpRlYUYUNM3hsqXBliSrJZVzsBm2XmGeZS3
         FnlQ==
X-Gm-Message-State: APjAAAUDr9JIUIduiuhYCHFoHstYBgi2d88LkcRLBdAmlIuVXCZXoNx2
	tsxd26g3Fz8ynX7B0SmFJOw=
X-Google-Smtp-Source: APXvYqzbYX+iBfgAv83OswzNYmgY2zbvIh2owquiaZ6b1724K12Nsa2FZZ7q0sBIgrd7PXz3Ao2/pQ==
X-Received: by 2002:a5e:850e:: with SMTP id i14mr58535612ioj.226.1577989491402;
        Thu, 02 Jan 2020 10:24:51 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:7a08:: with SMTP id h8ls4943988iom.4.gmail; Thu, 02 Jan
 2020 10:24:51 -0800 (PST)
X-Received: by 2002:a6b:8f11:: with SMTP id r17mr56261304iod.50.1577989490972;
        Thu, 02 Jan 2020 10:24:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577989490; cv=none;
        d=google.com; s=arc-20160816;
        b=v+BaiUXbKJD9IN+ATLLhbkQQXm5RSqdXJS1MRlEZAsjTwstjD3yd2cD506KmTtwnRE
         NlX+S1fo1DLiX1NwVS13DyZ3w+yN+u1X9N+tg/d4vDsseO8nEYQZ3wDh5Z96DUTLIS+s
         5kD+aAzHRf2ZstLgKyTmW/5kTDJnRYLk65EjjCA1ICB4UQuEXuuUApNhJSM9QdqxS6jy
         s7QM7VH23c1jkHpZ/eOw47ZDM8uAdd7P3IvKUtv8mmcSVLOHgxQR3m5yfRzKCLaX71Zx
         ROtsKYnirYX4Q/gJbV+Ie6I5Qd64B1BndIxKH4QM0vGtXBofyqTFPnzXcFqGeMls+M8/
         TIeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4g31LXRiAZxIL2y8j0j10iSJ5L5ME0DkpQG9B4nt4CM=;
        b=QmWElgSNl6zWoKHlARJNZGjFDvz6whpxtc2vISw0lnppNTbVZPs714q5XY2AKy1/Bm
         O26JAlRFm+kSI1ob0QXlCcaIV0Tm1ePNDe/N98ckWrZt+Y5yuzwFYeWhh5IjUMwvO1E0
         3+cTxUsZP0lt7lRoJnul9nGO1FduD5qx5YofBn1Afv4tK9qTO/mXuTrsCueB5zYng+yA
         84h3KIpbeA644TYAX1orIA3r3vGyC30jOYyWwShlE8JgHZnqAE3m2jBjM2ZUQKzcOywM
         I6PZiWOq2OxLh9GN7jCfRae/jgDa1lLaV01m2Srly8bSZZLpNmLnRw/dQP+NoFXeFfun
         hl3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TjpKpKJm;
       spf=pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=khazhy@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id i4si1928934ioi.1.2020.01.02.10.24.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2020 10:24:50 -0800 (PST)
Received-SPF: pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id l12so35217339qtq.12
        for <open-iscsi@googlegroups.com>; Thu, 02 Jan 2020 10:24:50 -0800 (PST)
X-Received: by 2002:ac8:163c:: with SMTP id p57mr62118354qtj.106.1577989490379;
 Thu, 02 Jan 2020 10:24:50 -0800 (PST)
MIME-Version: 1.0
References: <20191226204746.2197233-1-krisman@collabora.com>
 <CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com> <85ftgx7mlr.fsf@collabora.com>
In-Reply-To: <85ftgx7mlr.fsf@collabora.com>
From: "'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Thu, 2 Jan 2020 13:24:39 -0500
Message-ID: <CACGdZYJKF85SgOt0-yHiROsqhP0K+x+XAg7CRJv_0oKt60VtvA@mail.gmail.com>
Subject: Re: [PATCH v3] iscsi: Perform connection failure entirely in kernel space
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, Chris Leech <cleech@redhat.com>, jejb@linux.ibm.com, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, 
	"'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>, linux-scsi@vger.kernel.org, 
	Bharath Ravi <rbharath@google.com>, kernel@collabora.com, 
	Mike Christie <mchristi@redhat.com>, Bart Van Assche <bvanassche@acm.org>, 
	Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>, 
	Vaibhav Nagarnaik <vnagarnaik@google.com>, Anatol Pomazau <anatol@google.com>, 
	Tahsin Erdogan <tahsin@google.com>, Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000107818059b2c4f79"
X-Original-Sender: khazhy@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TjpKpKJm;       spf=pass
 (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as
 permitted sender) smtp.mailfrom=khazhy@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Khazhismel Kumykov <khazhy@google.com>
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

--000000000000107818059b2c4f79
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 2, 2020 at 1:13 PM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
>
> Khazhismel Kumykov <khazhy@google.com> writes:
>
> > On Thu, Dec 26, 2019 at 3:48 PM Gabriel Krisman Bertazi
> > <krisman@collabora.com> wrote:
> >>
> >> From: Bharath Ravi <rbharath@google.com>
> >>
> >> Connection failure processing depends on a daemon being present to (at
> >> least) stop the connection and start recovery.  This is a problem on a
> >> multipath scenario, where if the daemon failed for whatever reason, the
> >> SCSI path is never marked as down, multipath won't perform the
> >> failover and IO to the device will be forever waiting for that
> >> connection to come back.
> >>
> >> This patch performs the connection failure entirely inside the kernel.
> >> This way, the failover can happen and pending IO can continue even if
> >> the daemon is dead. Once the daemon comes alive again, it can execute
> >> recovery procedures if applicable.
> >>
> >> Changes since v2:
> >>   - Don't hold rx_mutex for too long at once
> >>
> >> Changes since v1:
> >>   - Remove module parameter.
> >>   - Always do kernel-side stop work.
> >>   - Block recovery timeout handler if system is dying.
> >>   - send a CONN_TERM stop if the system is dying.
> >>
> >> Cc: Mike Christie <mchristi@redhat.com>
> >> Cc: Lee Duncan <LDuncan@suse.com>
> >> Cc: Bart Van Assche <bvanassche@acm.org>
> >> Co-developed-by: Dave Clausen <dclausen@google.com>
> >> Signed-off-by: Dave Clausen <dclausen@google.com>
> >> Co-developed-by: Nick Black <nlb@google.com>
> >> Signed-off-by: Nick Black <nlb@google.com>
> >> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> >> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> >> Co-developed-by: Anatol Pomazau <anatol@google.com>
> >> Signed-off-by: Anatol Pomazau <anatol@google.com>
> >> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
> >> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
> >> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> >> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> >> Co-developed-by: Junho Ryu <jayr@google.com>
> >> Signed-off-by: Junho Ryu <jayr@google.com>
> >> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> >> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> >> Signed-off-by: Bharath Ravi <rbharath@google.com>
> >> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> >> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> >> ---
> >>  drivers/scsi/scsi_transport_iscsi.c | 63 +++++++++++++++++++++++++++++
> >>  include/scsi/scsi_transport_iscsi.h |  1 +
> >>  2 files changed, 64 insertions(+)
> >>
> >> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> >> index 271afea654e2..c6db6ded60a1 100644
> >> --- a/drivers/scsi/scsi_transport_iscsi.c
> >> +++ b/drivers/scsi/scsi_transport_iscsi.c
> >> @@ -86,6 +86,12 @@ struct iscsi_internal {
> >>         struct transport_container session_cont;
> >>  };
> >>
> >> +/* Worker to perform connection failure on unresponsive connections
> >> + * completely in kernel space.
> >> + */
> >> +static void stop_conn_work_fn(struct work_struct *work);
> >> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
> >> +
> >>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
> >>  static struct workqueue_struct *iscsi_eh_timer_workq;
> >>
> >> @@ -1611,6 +1617,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
> >>  static LIST_HEAD(sesslist);
> >>  static DEFINE_SPINLOCK(sesslock);
> >>  static LIST_HEAD(connlist);
> >> +static LIST_HEAD(connlist_err);
> >>  static DEFINE_SPINLOCK(connlock);
> >>
> >>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
> >> @@ -2247,6 +2254,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
> >>
> >>         mutex_init(&conn->ep_mutex);
> >>         INIT_LIST_HEAD(&conn->conn_list);
> >> +       INIT_LIST_HEAD(&conn->conn_list_err);
> >>         conn->transport = transport;
> >>         conn->cid = cid;
> >>
> >> @@ -2293,6 +2301,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
> >>
> >>         spin_lock_irqsave(&connlock, flags);
> >>         list_del(&conn->conn_list);
> >> +       list_del(&conn->conn_list_err);
> >>         spin_unlock_irqrestore(&connlock, flags);
> >>
> >>         transport_unregister_device(&conn->dev);
> >> @@ -2407,6 +2416,51 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
> >>  }
> >>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
> >>
> >> +static void stop_conn_work_fn(struct work_struct *work)
> >> +{
> >> +       struct iscsi_cls_conn *conn, *tmp;
> >> +       unsigned long flags;
> >> +       LIST_HEAD(recovery_list);
> >> +
> >> +       spin_lock_irqsave(&connlock, flags);
> >> +       if (list_empty(&connlist_err)) {
> >> +               spin_unlock_irqrestore(&connlock, flags);
> >> +               return;
> >> +       }
> >> +       list_splice_init(&connlist_err, &recovery_list);
> >> +       spin_unlock_irqrestore(&connlock, flags);
> >> +
> >> +       list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
> >> +               uint32_t sid = iscsi_conn_get_sid(conn);
> >> +               struct iscsi_cls_session *session;
> >> +
> >> +               mutex_lock(&rx_queue_mutex);
> > This worried me a bit, but it seems we won't destroy_conn while it's
> > on the err list - cool.
> >> +
> >> +               session = iscsi_session_lookup(sid);
> >> +               if (session) {
> >> +                       if (system_state != SYSTEM_RUNNING) {
> >> +                               session->recovery_tmo = 0;
> >> +                               conn->transport->stop_conn(conn,
> >> +                                                          STOP_CONN_TERM);
> >> +                       } else {
> >> +                               conn->transport->stop_conn(conn,
> >> +                                                          STOP_CONN_RECOVER);
> >> +                       }
> >> +               }
> >> +
> >> +               list_del_init(&conn->conn_list_err);
> >> +
> >> +               mutex_unlock(&rx_queue_mutex);
> >> +
> >> +               /* we don't want to hold rx_queue_mutex for too long,
> >> +                * for instance if many conns failed at the same time,
> >> +                * since this stall other iscsi maintenance operations.
> >> +                * Give other users a chance to proceed.
> >> +                */
> >> +               cond_resched();
> >> +       }
> >> +}
> >> +
> >>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
> >>  {
> >>         struct nlmsghdr *nlh;
> >> @@ -2414,6 +2468,12 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
> >>         struct iscsi_uevent *ev;
> >>         struct iscsi_internal *priv;
> >>         int len = nlmsg_total_size(sizeof(*ev));
> >> +       unsigned long flags;
> >> +
> >> +       spin_lock_irqsave(&connlock, flags);
> >> +       list_add(&conn->conn_list_err, &connlist_err);
> >> +       spin_unlock_irqrestore(&connlock, flags);
> >> +       queue_work(system_unbound_wq, &stop_conn_work);
> >>
> >>         priv = iscsi_if_transport_lookup(conn->transport);
> >>         if (!priv)
> >> @@ -2748,6 +2808,9 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
> >>         if (!conn)
> >>                 return -EINVAL;
> >>
> >> +       if (!list_empty(&conn->conn_list_err))
> > Does this check need to be under connlock?
>
> My understanding is that it is not necessary, since it is serialized
> against the conn removal itself, through the rx_mutex, it seemed safe to
> do the verification lockless.
>
> It can only race with the insertion, in which case, it will be safely
> removed from the dispatch list here, under rx_mutex, and the worker will
> detect and skipped it.

My worry is the splice, which is under only connlock, not rx_mutex, which
might lead to UB if we're checking empty while modifying the list_head ?

>
> --
> Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CACGdZYJKF85SgOt0-yHiROsqhP0K%2Bx%2BXAg7CRJv_0oKt60VtvA%40mail.gmail.com.

--000000000000107818059b2c4f79
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIS5wYJKoZIhvcNAQcCoIIS2DCCEtQCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghBNMIIEXDCCA0SgAwIBAgIOSBtqDm4P/739RPqw/wcwDQYJKoZIhvcNAQELBQAwZDELMAkGA1UE
BhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExOjA4BgNVBAMTMUdsb2JhbFNpZ24gUGVy
c29uYWxTaWduIFBhcnRuZXJzIENBIC0gU0hBMjU2IC0gRzIwHhcNMTYwNjE1MDAwMDAwWhcNMjEw
NjE1MDAwMDAwWjBMMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEiMCAG
A1UEAxMZR2xvYmFsU2lnbiBIViBTL01JTUUgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBALR23lKtjlZW/17kthzYcMHHKFgywfc4vLIjfq42NmMWbXkNUabIgS8KX4PnIFsTlD6F
GO2fqnsTygvYPFBSMX4OCFtJXoikP2CQlEvO7WooyE94tqmqD+w0YtyP2IB5j4KvOIeNv1Gbnnes
BIUWLFxs1ERvYDhmk+OrvW7Vd8ZfpRJj71Rb+QQsUpkyTySaqALXnyztTDp1L5d1bABJN/bJbEU3
Hf5FLrANmognIu+Npty6GrA6p3yKELzTsilOFmYNWg7L838NS2JbFOndl+ce89gM36CW7vyhszi6
6LqqzJL8MsmkP53GGhf11YMP9EkmawYouMDP/PwQYhIiUO0CAwEAAaOCASIwggEeMA4GA1UdDwEB
/wQEAwIBBjAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwEgYDVR0TAQH/BAgwBgEB/wIB
ADAdBgNVHQ4EFgQUyzgSsMeZwHiSjLMhleb0JmLA4D8wHwYDVR0jBBgwFoAUJiSSix/TRK+xsBtt
r+500ox4AAMwSwYDVR0fBEQwQjBAoD6gPIY6aHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9ncy9n
c3BlcnNvbmFsc2lnbnB0bnJzc2hhMmcyLmNybDBMBgNVHSAERTBDMEEGCSsGAQQBoDIBKDA0MDIG
CCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzANBgkqhkiG
9w0BAQsFAAOCAQEACskdySGYIOi63wgeTmljjA5BHHN9uLuAMHotXgbYeGVrz7+DkFNgWRQ/dNse
Qa4e+FeHWq2fu73SamhAQyLigNKZF7ZzHPUkSpSTjQqVzbyDaFHtRBAwuACuymaOWOWPePZXOH9x
t4HPwRQuur57RKiEm1F6/YJVQ5UTkzAyPoeND/y1GzXS4kjhVuoOQX3GfXDZdwoN8jMYBZTO0H5h
isymlIl6aot0E5KIKqosW6mhupdkS1ZZPp4WXR4frybSkLejjmkTYCTUmh9DuvKEQ1Ge7siwsWgA
NS1Ln+uvIuObpbNaeAyMZY0U5R/OyIDaq+m9KXPYvrCZ0TCLbcKuRzCCBB4wggMGoAMCAQICCwQA
AAAAATGJxkCyMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9vdCBDQSAt
IFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTExMDgwMjEw
MDAwMFoXDTI5MDMyOTEwMDAwMFowZDELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24g
bnYtc2ExOjA4BgNVBAMTMUdsb2JhbFNpZ24gUGVyc29uYWxTaWduIFBhcnRuZXJzIENBIC0gU0hB
MjU2IC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCg/hRKosYAGP+P7mIdq5NB
Kr3J0tg+8lPATlgp+F6W9CeIvnXRGUvdniO+BQnKxnX6RsC3AnE0hUUKRaM9/RDDWldYw35K+sge
C8fWXvIbcYLXxWkXz+Hbxh0GXG61Evqux6i2sKeKvMr4s9BaN09cqJ/wF6KuP9jSyWcyY+IgL6u2
52my5UzYhnbf7D7IcC372bfhwM92n6r5hJx3r++rQEMHXlp/G9J3fftgsD1bzS7J/uHMFpr4MXua
eoiMLV5gdmo0sQg23j4pihyFlAkkHHn4usPJ3EePw7ewQT6BUTFyvmEB+KDoi7T4RCAZDstgfpzD
rR/TNwrK8/FXoqnFAgMBAAGjgegwgeUwDgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8C
AQEwHQYDVR0OBBYEFCYkkosf00SvsbAbba/udNKMeAADMEcGA1UdIARAMD4wPAYEVR0gADA0MDIG
CCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzA2BgNVHR8E
LzAtMCugKaAnhiVodHRwOi8vY3JsLmdsb2JhbHNpZ24ubmV0L3Jvb3QtcjMuY3JsMB8GA1UdIwQY
MBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MA0GCSqGSIb3DQEBCwUAA4IBAQACAFVjHihZCV/IqJYt
7Nig/xek+9g0dmv1oQNGYI1WWeqHcMAV1h7cheKNr4EOANNvJWtAkoQz+076Sqnq0Puxwymj0/+e
oQJ8GRODG9pxlSn3kysh7f+kotX7pYX5moUa0xq3TCjjYsF3G17E27qvn8SJwDsgEImnhXVT5vb7
qBYKadFizPzKPmwsJQDPKX58XmPxMcZ1tG77xCQEXrtABhYC3NBhu8+c5UoinLpBQC1iBnNpNwXT
Lmd4nQdf9HCijG1e8myt78VP+QSwsaDT7LVcLT2oDPVggjhVcwljw3ePDwfGP9kNrR+lc8XrfClk
WbrdhC2o4Ui28dtIVHd3MIIDXzCCAkegAwIBAgILBAAAAAABIVhTCKIwDQYJKoZIhvcNAQELBQAw
TDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENBIC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24x
EzARBgNVBAMTCkdsb2JhbFNpZ24wHhcNMDkwMzE4MTAwMDAwWhcNMjkwMzE4MTAwMDAwWjBMMSAw
HgYDVQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEG
A1UEAxMKR2xvYmFsU2lnbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMwldpB5Bngi
FvXAg7aEyiie/QV2EcWtiHL8RgJDx7KKnQRfJMsuS+FggkbhUqsMgUdwbN1k0ev1LKMPgj0MK66X
17YUhhB5uzsTgHeMCOFJ0mpiLx9e+pZo34knlTifBtc+ycsmWQ1z3rDI6SYOgxXG71uL0gRgykmm
KPZpO/bLyCiR5Z2KYVc3rHQU3HTgOu5yLy6c+9C7v/U9AOEGM+iCK65TpjoWc4zdQQ4gOsC0p6Hp
sk+QLjJg6VfLuQSSaGjlOCZgdbKfd/+RFO+uIEn8rUAVSNECMWEZXriX7613t2Saer9fwRPvm2L7
DWzgVGkWqQPabumDk3F2xmmFghcCAwEAAaNCMEAwDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB/wQF
MAMBAf8wHQYDVR0OBBYEFI/wS3+oLkUkrk1Q+mOai97i3Ru8MA0GCSqGSIb3DQEBCwUAA4IBAQBL
QNvAUKr+yAzv95ZURUm7lgAJQayzE4aGKAczymvmdLm6AC2upArT9fHxD4q/c2dKg8dEe3jgr25s
bwMpjjM5RcOO5LlXbKr8EpbsU8Yt5CRsuZRj+9xTaGdWPoO4zzUhw8lo/s7awlOqzJCK6fBdRoyV
3XpYKBovHd7NADdBj+1EbddTKJd+82cEHhXXipa0095MJ6RMG3NzdvQXmcIfeg7jLQitChws/zyr
VQ4PkX4268NXSb7hLi18YIvDQVETI53O9zJrlAGomecsMx86OyXShkDOOyyGeMlhLxS67ttVb9+E
7gUJTb0o2HLO02JQZR7rkpeDMdmztcpHWD9fMIIEZDCCA0ygAwIBAgIMROfpbOE2LmBNcT9PMA0G
CSqGSIb3DQEBCwUAMEwxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSIw
IAYDVQQDExlHbG9iYWxTaWduIEhWIFMvTUlNRSBDQSAxMB4XDTE5MTAwODA3MDI0M1oXDTIwMDQw
NTA3MDI0M1owIjEgMB4GCSqGSIb3DQEJAQwRa2hhemh5QGdvb2dsZS5jb20wggEiMA0GCSqGSIb3
DQEBAQUAA4IBDwAwggEKAoIBAQDHs68V+xfPPdZymKvsxFQIyXcrZWAWehNaND3v7YOAmvpQyUtj
rt3YiLYHF64Qg+NCgs8TV0dblwDJ4xQdaFHtxau7/FgHQpb+7xq8KG7uFoqu85QnJ7d+BdmYupRE
E2Ablc7aej2J/sd+JQ8RvJl7jtg50LzQIBkrXkQxbZUWifPzjnQRLn9eUZ+LMEK9UTClYIpApPjj
N3HmfXsBpcvL4qSiVyy3JFu/tLGg0On4MwxC6jm18eo03l3hRGw+V8Le/uEQkgm+YQQfRvQ9p4eW
hFSe33ZpJU5SdCc+HxKvQbpXGqnUXI6CGnjL8FtHCj1PK8iGfyNxOKtfcYI4ZbndAgMBAAGjggFu
MIIBajAcBgNVHREEFTATgRFraGF6aHlAZ29vZ2xlLmNvbTBQBggrBgEFBQcBAQREMEIwQAYIKwYB
BQUHMAKGNGh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzaHZzbWltZWNhMS5j
cnQwHQYDVR0OBBYEFJ2Vb0jiXUWlD5ibz23a558NzWOgMB8GA1UdIwQYMBaAFMs4ErDHmcB4koyz
IZXm9CZiwOA/MEwGA1UdIARFMEMwQQYJKwYBBAGgMgEoMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8v
d3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMDsGA1UdHwQ0MDIwMKAuoCyGKmh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NodnNtaW1lY2ExLmNybDAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMA0GCSqGSIb3DQEBCwUAA4IBAQCk2Fht/QkHdD9YQlQ/
/BoVlZzl+wg2oB8mPQEGNN49NfSL/ERAGoituF3/Zv+xv6owWk2Xp+sTA69OuAt2wZ4O0pXm2NNb
yE0QS1h/jH61IgJY4dU65qPcUYmkEdBDRX3XzR1wmnDc3yelHxlYerMuJFmSM5g4dIjbdpOlHTGh
jnWrjPPoGaT9nEbPfTxkahJTybnCIMuQbt8nl2QdV64GhBMCQWbIW1xY6Uv0FZcadQhF1vzhd/OH
qGkK98y1Dz/54GBO4A8jOSeDFuh+l2iygTcH16xKfB0XvhoUGdrru24FTEY7p4VTKkw+eJbUvdod
PlESVftk7+JISQWxBEYKMYICXjCCAloCAQEwXDBMMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xv
YmFsU2lnbiBudi1zYTEiMCAGA1UEAxMZR2xvYmFsU2lnbiBIViBTL01JTUUgQ0EgMQIMROfpbOE2
LmBNcT9PMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCC1PxkrgGm3hhH1698mLe9N
WHOSTLpQX1jvE07SeyfbPzAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEP
Fw0yMDAxMDIxODI0NTBaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglg
hkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEArB8p6SifzCxzLu13gyin6pYPugkMhcUOWxlw85L8
2XtUtJZw0M9l0Y7Cg6D27oiACGD2FZo+K/73ZHz977FjrsUJu6HIIHA/M68n/7Au5fnH9dIkAcfP
Nz3VEgR1myw1YOY7G8mZzJCm71uEV+qPT2c4XsmjJACIY5Lh0dJtz+f+vtKobxZui2eoqGHVgddx
k//hBqAqfIdiSKCNqF2vZOYmz0jbTYtwjFJ+ro+PS7cI/rjlnL9+4ig7fVNlUXe56EmtBGnbRhL3
3p+6LPgBo82SmM3cNGlt3Bj4DJLN31fC6R+cLYCFpjZQ8yuCQnr+IM9tAo/e2V4n8Q5RI9bk1Q==
--000000000000107818059b2c4f79--
